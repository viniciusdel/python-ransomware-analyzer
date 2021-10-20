.class Landroid/support/v7/widget/AppCompatSeekBarHelper;
.super Landroid/support/v7/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private final mView:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x1010142

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->TINT_ATTRS:[I

    return-void
.end method

.method constructor <init>(Landroid/widget/SeekBar;Landroid/support/v7/widget/TintManager;)V
    .locals 6

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;Landroid/support/v7/widget/TintManager;)V

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    .line 34
    return-void
.end method


# virtual methods
.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    .line 39
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v6, v1

    sget-object v7, Landroid/support/v7/widget/AppCompatSeekBarHelper;->TINT_ATTRS:[I

    move v8, v2

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    move-object v3, v5

    .line 41
    move-object v5, v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v4, v5

    .line 42
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 43
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 46
    return-void
.end method
