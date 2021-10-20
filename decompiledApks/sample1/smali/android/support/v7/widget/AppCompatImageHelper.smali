.class Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"


# static fields
.field private static final VIEW_ATTRS:[I


# instance fields
.field private final mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010119

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatImageHelper;->VIEW_ATTRS:[I

    return-void
.end method

.method constructor <init>(Landroid/widget/ImageView;Landroid/support/v7/widget/TintManager;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    .line 34
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 35
    return-void
.end method


# virtual methods
.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v1

    sget-object v7, Landroid/support/v7/widget/AppCompatImageHelper;->VIEW_ATTRS:[I

    move v8, v2

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    move-object v3, v5

    .line 41
    move-object v5, v3

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 42
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 47
    return-void

    .line 45
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method setImageResource(I)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_1

    .line 51
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    :goto_1
    return-void

    .line 51
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    .line 55
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
