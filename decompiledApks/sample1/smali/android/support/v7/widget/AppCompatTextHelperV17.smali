.class Landroid/support/v7/widget/AppCompatTextHelperV17;
.super Landroid/support/v7/widget/AppCompatTextHelper;
.source "AppCompatTextHelperV17.java"


# static fields
.field private static final VIEW_ATTRS_v17:[I


# instance fields
.field private mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

.field private mDrawableStartTint:Landroid/support/v7/widget/TintInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/widget/AppCompatTextHelperV17;->VIEW_ATTRS_v17:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010392
        0x1010393
    .end array-data
.end method

.method constructor <init>(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V

    .line 35
    return-void
.end method


# virtual methods
.method applyCompoundDrawablesTints()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    .line 57
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v2, :cond_1

    .line 58
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatTextHelperV17;->mView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 59
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelperV17;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 60
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x2

    aget-object v3, v3, v4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatTextHelperV17;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V

    .line 62
    :cond_1
    return-void
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 12

    .prologue
    .line 38
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 40
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatTextHelperV17;->mView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v3, v6

    .line 41
    move-object v6, v3

    invoke-static {v6}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v6

    move-object v4, v6

    .line 43
    move-object v6, v3

    move-object v7, v1

    sget-object v8, Landroid/support/v7/widget/AppCompatTextHelperV17;->VIEW_ATTRS_v17:[I

    move v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v5, v6

    .line 44
    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatTextHelperV17;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableStartTint:Landroid/support/v7/widget/TintInfo;

    .line 47
    :cond_0
    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 48
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-static {v7, v8, v9}, Landroid/support/v7/widget/AppCompatTextHelperV17;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/TintManager;I)Landroid/support/v7/widget/TintInfo;

    move-result-object v7

    iput-object v7, v6, Landroid/support/v7/widget/AppCompatTextHelperV17;->mDrawableEndTint:Landroid/support/v7/widget/TintInfo;

    .line 50
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 51
    return-void
.end method
