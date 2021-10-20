.class public Landroid/support/design/internal/ScrimInsetsFrameLayout;
.super Landroid/widget/FrameLayout;
.source "ScrimInsetsFrameLayout.java"


# instance fields
.field private mInsetForeground:Landroid/graphics/drawable/Drawable;

.field private mInsets:Landroid/graphics/Rect;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/internal/ScrimInsetsFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    .line 54
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/design/R$styleable;->ScrimInsetsFrameLayout:[I

    move v8, v3

    sget v9, Landroid/support/design/R$style;->Widget_Design_ScrimInsetsFrameLayout:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    move-object v4, v5

    .line 57
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/design/R$styleable;->ScrimInsetsFrameLayout_insetForeground:I

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    .line 58
    move-object v5, v4

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->setWillNotDraw(Z)V

    .line 61
    move-object v5, v0

    new-instance v6, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/design/internal/ScrimInsetsFrameLayout$1;-><init>(Landroid/support/design/internal/ScrimInsetsFrameLayout;)V

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/internal/ScrimInsetsFrameLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$100(Landroid/support/design/internal/ScrimInsetsFrameLayout;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 84
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getWidth()I

    move-result v5

    move v2, v5

    .line 85
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getHeight()I

    move-result v5

    move v3, v5

    .line 86
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 87
    move-object v5, v1

    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    move-result v5

    move v4, v5

    .line 88
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getScrollX()I

    move-result v6

    int-to-float v6, v6

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/internal/ScrimInsetsFrameLayout;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 92
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 93
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    move v8, v2

    move v9, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 97
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 98
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    move v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    move v8, v2

    move v9, v3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsets:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 107
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 108
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 117
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 118
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 120
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 125
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/internal/ScrimInsetsFrameLayout;->mInsetForeground:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 128
    :cond_0
    return-void
.end method
