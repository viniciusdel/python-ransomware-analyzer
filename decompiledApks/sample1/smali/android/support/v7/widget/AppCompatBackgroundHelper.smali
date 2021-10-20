.class Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"


# instance fields
.field private mBackgroundTint:Landroid/support/v7/widget/TintInfo;

.field private mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

.field private final mTintManager:Landroid/support/v7/widget/TintManager;

.field private final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/support/v7/widget/TintManager;)V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    .line 39
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    .line 40
    return-void
.end method


# virtual methods
.method applySupportBackgroundTint()V
    .locals 5

    .prologue
    .line 107
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v1, v2

    .line 108
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 109
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v2, :cond_1

    .line 110
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/TintManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v2, :cond_0

    .line 112
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/TintManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V

    goto :goto_0
.end method

.method getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    iget-object v1, v1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I

    move v9, v2

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v3, v6

    .line 46
    move-object v6, v3

    :try_start_0
    sget v7, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 47
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    move-object v4, v6

    .line 49
    move-object v6, v4

    if-eqz v6, :cond_0

    .line 50
    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 53
    :cond_0
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 54
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 57
    :cond_1
    move-object v6, v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;

    move-object v7, v3

    sget v8, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/support/v7/graphics/drawable/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_2
    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    move-object v6, v5

    throw v6
.end method

.method onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 76
    return-void
.end method

.method onSetBackgroundResource(I)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTintManager:Landroid/support/v7/widget/TintManager;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V

    .line 71
    return-void

    .line 70
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_1

    .line 120
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    .line 121
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 123
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 124
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 128
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 129
    return-void

    .line 126
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;

    goto :goto_0
.end method

.method setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    .line 80
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 82
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;

    .line 83
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z

    .line 85
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 86
    return-void
.end method

.method setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    if-nez v2, :cond_0

    .line 94
    move-object v2, v0

    new-instance v3, Landroid/support/v7/widget/TintInfo;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v7/widget/TintInfo;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    .line 96
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 97
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z

    .line 99
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    .line 100
    return-void
.end method
