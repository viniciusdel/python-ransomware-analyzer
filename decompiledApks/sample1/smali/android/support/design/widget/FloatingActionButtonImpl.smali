.class abstract Landroid/support/design/widget/FloatingActionButtonImpl;
.super Ljava/lang/Object;
.source "FloatingActionButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
    }
.end annotation


# static fields
.field static final EMPTY_STATE_SET:[I

.field static final FOCUSED_ENABLED_STATE_SET:[I

.field static final PRESSED_ENABLED_STATE_SET:[I

.field static final SHOW_HIDE_ANIM_DURATION:I = 0xc8


# instance fields
.field private mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field final mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

.field final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->PRESSED_ENABLED_STATE_SET:[I

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->FOCUSED_ENABLED_STATE_SET:[I

    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/support/design/widget/FloatingActionButtonImpl;->EMPTY_STATE_SET:[I

    return-void

    .line 39
    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method constructor <init>(Landroid/view/View;Landroid/support/design/widget/ShadowViewDelegate;)V
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/view/View;

    .line 52
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/design/widget/FloatingActionButtonImpl;->mShadowViewDelegate:Landroid/support/design/widget/ShadowViewDelegate;

    .line 53
    return-void
.end method

.method private ensurePreDrawListener()V
    .locals 6

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v1, :cond_0

    .line 123
    move-object v1, v0

    new-instance v2, Landroid/support/design/widget/FloatingActionButtonImpl$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/FloatingActionButtonImpl$1;-><init>(Landroid/support/design/widget/FloatingActionButtonImpl;)V

    iput-object v2, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method createBorderDrawable(ILandroid/content/res/ColorStateList;)Landroid/support/design/widget/CircularBorderDrawable;
    .locals 11

    .prologue
    .line 95
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v3, v5

    .line 96
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/FloatingActionButtonImpl;->newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;

    move-result-object v5

    move-object v4, v5

    .line 97
    move-object v5, v4

    move-object v6, v3

    sget v7, Landroid/support/design/R$color;->design_fab_stroke_top_outer_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v7, v3

    sget v8, Landroid/support/design/R$color;->design_fab_stroke_top_inner_color:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object v8, v3

    sget v9, Landroid/support/design/R$color;->design_fab_stroke_end_inner_color:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object v9, v3

    sget v10, Landroid/support/design/R$color;->design_fab_stroke_end_outer_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/design/widget/CircularBorderDrawable;->setGradientColors(IIII)V

    .line 102
    move-object v5, v4

    move v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderWidth(F)V

    .line 103
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CircularBorderDrawable;->setBorderTint(Landroid/content/res/ColorStateList;)V

    .line 104
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method createShapeDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 5

    .prologue
    .line 112
    move-object v0, p0

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v1, v2

    .line 113
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 114
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 115
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method abstract hide(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method abstract jumpDrawableToCurrentState()V
.end method

.method newCircularDrawable()Landroid/support/design/widget/CircularBorderDrawable;
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CircularBorderDrawable;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/support/design/widget/CircularBorderDrawable;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method onAttachedToWindow()V
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->requirePreDrawListener()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/FloatingActionButtonImpl;->ensurePreDrawListener()V

    .line 79
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    :cond_0
    return-void
.end method

.method onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 85
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 86
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/design/widget/FloatingActionButtonImpl;->mPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 88
    :cond_0
    return-void
.end method

.method abstract onDrawableStateChanged([I)V
.end method

.method onPreDraw()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method requirePreDrawListener()Z
    .locals 2

    .prologue
    .line 91
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method abstract setBackgroundDrawable(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;II)V
.end method

.method abstract setBackgroundTintList(Landroid/content/res/ColorStateList;)V
.end method

.method abstract setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.end method

.method abstract setElevation(F)V
.end method

.method abstract setPressedTranslationZ(F)V
.end method

.method abstract setRippleColor(I)V
.end method

.method abstract show(Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;)V
    .param p1    # Landroid/support/design/widget/FloatingActionButtonImpl$InternalVisibilityChangedListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
