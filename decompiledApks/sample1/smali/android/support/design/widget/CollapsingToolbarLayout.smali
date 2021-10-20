.class public Landroid/support/design/widget/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "CollapsingToolbarLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;,
        Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final SCRIM_ANIMATION_DURATION:I = 0x258


# instance fields
.field private final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCollapsingTitleEnabled:Z

.field private mContentScrim:Landroid/graphics/drawable/Drawable;

.field private mCurrentOffset:I

.field private mDrawCollapsingTitle:Z

.field private mDummyView:Landroid/view/View;

.field private mExpandedMarginBottom:I

.field private mExpandedMarginLeft:I

.field private mExpandedMarginRight:I

.field private mExpandedMarginTop:I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

.field private mRefreshToolbar:Z

.field private mScrimAlpha:I

.field private mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mScrimsAreShown:Z

.field private mStatusBarScrim:Landroid/graphics/drawable/Drawable;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field private mToolbarId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .prologue
    .line 130
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 94
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 104
    move-object v7, v0

    new-instance v8, Landroid/graphics/Rect;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 132
    move-object v7, v1

    invoke-static {v7}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 134
    move-object v7, v0

    new-instance v8, Landroid/support/design/widget/CollapsingTextHelper;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 135
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v8, Landroid/support/design/widget/AnimationUtils;->DECELERATE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 137
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout:[I

    move v10, v3

    sget v11, Landroid/support/design/R$style;->Widget_Design_CollapsingToolbar:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v4, v7

    .line 141
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleGravity:I

    const v10, 0x800053

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 144
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleGravity:I

    const v10, 0x800013

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 148
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMargin:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    iput v12, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    move-object v14, v9

    move v15, v10

    move v9, v15

    move-object v10, v14

    move v11, v15

    iput v11, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    move-object v14, v8

    move v15, v9

    move v8, v15

    move-object v9, v14

    move v10, v15

    iput v10, v9, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    .line 151
    move-object v7, v0

    invoke-static {v7}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 153
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginStart:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v6, v7

    .line 156
    move v7, v5

    if-eqz v7, :cond_7

    .line 157
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    .line 162
    :cond_0
    :goto_1
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 163
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginEnd:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    move v6, v7

    .line 165
    move v7, v5

    if-eqz v7, :cond_8

    .line 166
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    .line 171
    :cond_1
    :goto_2
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 172
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginTop:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    .line 175
    :cond_2
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 176
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleMarginBottom:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    .line 180
    :cond_3
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_titleEnabled:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 182
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_title:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    .line 185
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v8, Landroid/support/design/R$style;->TextAppearance_Design_CollapsingToolbar_Expanded:I

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 187
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget v8, Landroid/support/design/R$style;->TextAppearance_AppCompat_Widget_ActionBar_Title:I

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 191
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 192
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_expandedTitleTextAppearance:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 196
    :cond_4
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 197
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_collapsedTitleTextAppearance:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 203
    :cond_5
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_contentScrim:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 204
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_statusBarScrim:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 206
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->CollapsingToolbarLayout_toolbarId:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    .line 208
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 210
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/design/widget/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    .line 212
    move-object v7, v0

    new-instance v8, Landroid/support/design/widget/CollapsingToolbarLayout$1;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/design/widget/CollapsingToolbarLayout$1;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 222
    return-void

    .line 151
    :cond_6
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 159
    :cond_7
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    goto/16 :goto_1

    .line 168
    :cond_8
    move-object v7, v0

    move v8, v6

    iput v8, v7, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    goto/16 :goto_2
.end method

.method static synthetic access$000(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/CollapsingToolbarLayout;I)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    return-void
.end method

.method static synthetic access$302(Landroid/support/design/widget/CollapsingToolbarLayout;I)I
    .locals 7

    .prologue
    .line 90
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    move v0, v2

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/design/widget/CollapsingToolbarLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v0, v1

    return-object v0
.end method

.method private animateScrim(I)V
    .locals 7

    .prologue
    .line 513
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 514
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_1

    .line 515
    move-object v2, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 516
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/16 v3, 0x258

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 517
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 518
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/CollapsingToolbarLayout$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/CollapsingToolbarLayout$2;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 528
    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 529
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 530
    return-void

    .line 524
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 525
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    goto :goto_0
.end method

.method private ensureToolbar()V
    .locals 8

    .prologue
    .line 302
    move-object v0, p0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    if-nez v6, :cond_0

    .line 338
    :goto_0
    return-void

    .line 306
    :cond_0
    const/4 v6, 0x0

    move-object v1, v6

    const/4 v6, 0x0

    move-object v2, v6

    .line 308
    const/4 v6, 0x0

    move v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v6

    move v4, v6

    :goto_1
    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    .line 309
    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v5, v6

    .line 310
    move-object v6, v5

    instance-of v6, v6, Landroid/support/v7/widget/Toolbar;

    if-eqz v6, :cond_4

    .line 311
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    .line 313
    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbarId:I

    move-object v7, v5

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 315
    move-object v6, v5

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    move-object v2, v6

    .line 330
    :cond_1
    :goto_2
    move-object v6, v2

    if-nez v6, :cond_2

    .line 332
    move-object v6, v1

    move-object v2, v6

    .line 335
    :cond_2
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    .line 336
    move-object v6, v0

    invoke-direct {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 337
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mRefreshToolbar:Z

    .line 338
    goto :goto_0

    .line 318
    :cond_3
    move-object v6, v1

    if-nez v6, :cond_4

    .line 320
    move-object v6, v5

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    move-object v1, v6

    .line 308
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    :cond_5
    move-object v6, v5

    check-cast v6, Landroid/support/v7/widget/Toolbar;

    move-object v2, v6

    .line 325
    goto :goto_2
.end method

.method private static getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;
    .locals 6

    .prologue
    .line 417
    move-object v0, p0

    move-object v2, v0

    sget v3, Landroid/support/design/R$id;->view_offset_helper:I

    invoke-virtual {v2, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/ViewOffsetHelper;

    move-object v1, v2

    .line 418
    move-object v2, v1

    if-nez v2, :cond_0

    .line 419
    new-instance v2, Landroid/support/design/widget/ViewOffsetHelper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    move-object v1, v2

    .line 420
    move-object v2, v0

    sget v3, Landroid/support/design/R$id;->view_offset_helper:I

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 422
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private setScrimAlpha(I)V
    .locals 5

    .prologue
    .line 533
    move-object v0, p0

    move v1, p1

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-eq v3, v4, :cond_1

    .line 534
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v2, v3

    .line 535
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_0

    .line 536
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 538
    :cond_0
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    .line 539
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 541
    :cond_1
    return-void
.end method

.method private updateDummyView()V
    .locals 7

    .prologue
    .line 341
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 343
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 344
    move-object v2, v1

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 345
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 348
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v2, :cond_2

    .line 349
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 350
    move-object v2, v0

    new-instance v3, Landroid/view/View;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    .line 352
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 353
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    const/4 v4, -0x1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;II)V

    .line 356
    :cond_2
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 3

    .prologue
    .line 785
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move v0, v2

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 255
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 256
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v3, :cond_0

    .line 257
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 258
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v3, :cond_1

    .line 263
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 267
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v3, :cond_2

    .line 268
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    :goto_0
    move v2, v3

    .line 269
    move v3, v2

    if-lez v3, :cond_2

    .line 270
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    neg-int v5, v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v6

    move v7, v2

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/CollapsingToolbarLayout;->mCurrentOffset:I

    sub-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 272
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 273
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    :cond_2
    return-void

    .line 268
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 10

    .prologue
    .line 283
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 284
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-ne v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    if-lez v5, :cond_0

    .line 285
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 286
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-wide v8, v3

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v5

    move v0, v5

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    .locals 5

    .prologue
    .line 790
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-super {v3}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 7

    .prologue
    .line 795
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v0, v2

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .prologue
    .line 800
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v2

    return-object v0
.end method

.method public getCollapsedTitleGravity()I
    .locals 2

    .prologue
    .line 700
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextGravity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getCollapsedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 756
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getContentScrim()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 601
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getExpandedTitleGravity()I
    .locals 2

    .prologue
    .line 739
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTextGravity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getExpandedTitleTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 773
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getExpandedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method final getScrimTriggerOffset()I
    .locals 3

    .prologue
    .line 780
    move-object v0, p0

    const/4 v1, 0x2

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    mul-int/2addr v1, v2

    move v0, v1

    return v0
.end method

.method public getStatusBarScrim()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 661
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 445
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTitleEnabled()Z
    .locals 2

    .prologue
    .line 474
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 226
    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 229
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 230
    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_1

    .line 231
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-nez v2, :cond_0

    .line 232
    move-object v2, v0

    new-instance v3, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/CollapsingToolbarLayout$OffsetUpdateListener;-><init>(Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/design/widget/CollapsingToolbarLayout$1;)V

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    .line 234
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->addOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 236
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v1, v2

    .line 242
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Landroid/support/design/widget/AppBarLayout;

    if-eqz v2, :cond_0

    .line 243
    move-object v2, v1

    check-cast v2, Landroid/support/design/widget/AppBarLayout;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mOnOffsetChangedListener:Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/AppBarLayout;->removeOnOffsetChangedListener(Landroid/support/design/widget/AppBarLayout$OnOffsetChangedListener;)V

    .line 246
    :cond_0
    move-object v2, v0

    invoke-super {v2}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 247
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    .prologue
    .line 366
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    move v15, v5

    invoke-super/range {v10 .. v15}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 370
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 373
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->isShown()Z

    move-result v11

    iput-boolean v11, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    .line 375
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mDrawCollapsingTitle:Z

    if-eqz v10, :cond_0

    .line 376
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mDummyView:Landroid/view/View;

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {v10, v11, v12}, Landroid/support/design/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 377
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    move v12, v5

    move-object v13, v0

    iget-object v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    sub-int/2addr v12, v13

    move-object v13, v0

    iget-object v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    move v14, v5

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 380
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v11, v0

    iget v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginLeft:I

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/CollapsingToolbarLayout;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move-object v13, v0

    iget v13, v13, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginTop:I

    add-int/2addr v12, v13

    move v13, v4

    move v14, v2

    sub-int/2addr v13, v14

    move-object v14, v0

    iget v14, v14, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginRight:I

    sub-int/2addr v13, v14

    move v14, v5

    move v15, v3

    sub-int/2addr v14, v15

    move-object v15, v0

    iget v15, v15, Landroid/support/design/widget/CollapsingToolbarLayout;->mExpandedMarginBottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 386
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 391
    :cond_0
    const/4 v10, 0x0

    move v6, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildCount()I

    move-result v10

    move v7, v10

    :goto_0
    move v10, v6

    move v11, v7

    if-ge v10, v11, :cond_2

    .line 392
    move-object v10, v0

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    move-object v8, v10

    .line 394
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-static {v10}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 395
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v10}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v10

    move v9, v10

    .line 396
    move-object v10, v8

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    move v11, v9

    if-ge v10, v11, :cond_1

    .line 399
    move-object v10, v8

    move v11, v9

    invoke-virtual {v10, v11}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 403
    :cond_1
    move-object v10, v8

    invoke-static {v10}, Landroid/support/design/widget/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Landroid/support/design/widget/ViewOffsetHelper;

    move-result-object v10

    invoke-virtual {v10}, Landroid/support/design/widget/ViewOffsetHelper;->onViewLayout()V

    .line 391
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 407
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    if-eqz v10, :cond_4

    .line 408
    move-object v10, v0

    iget-boolean v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v10}, Landroid/support/design/widget/CollapsingTextHelper;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 410
    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 412
    :cond_3
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/CollapsingToolbarLayout;->mToolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v11}, Landroid/support/v7/widget/Toolbar;->getHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/support/design/widget/CollapsingToolbarLayout;->setMinimumHeight(I)V

    .line 414
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    .line 360
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->ensureToolbar()V

    .line 361
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 362
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10

    .prologue
    .line 295
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 296
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 297
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 299
    :cond_0
    return-void
.end method

.method public setCollapsedTitleGravity(I)V
    .locals 4

    .prologue
    .line 691
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 692
    return-void
.end method

.method public setCollapsedTitleTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 671
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 672
    return-void
.end method

.method public setCollapsedTitleTextColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 680
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    .line 681
    return-void
.end method

.method public setCollapsedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 748
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTypeface(Landroid/graphics/Typeface;)V

    .line 749
    return-void
.end method

.method public setContentScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 553
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 554
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 555
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 557
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_2

    .line 558
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    .line 559
    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->getWidth()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getHeight()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 560
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 561
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 565
    :goto_0
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 567
    :cond_1
    return-void

    .line 563
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mContentScrim:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setContentScrimColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 578
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 579
    return-void
.end method

.method public setContentScrimResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 590
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setContentScrim(Landroid/graphics/drawable/Drawable;)V

    .line 592
    return-void
.end method

.method public setExpandedTitleColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 719
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 720
    return-void
.end method

.method public setExpandedTitleGravity(I)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 731
    return-void
.end method

.method public setExpandedTitleTextAppearance(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 710
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextAppearance(I)V

    .line 711
    return-void
.end method

.method public setExpandedTitleTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 765
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTypeface(Landroid/graphics/Typeface;)V

    .line 766
    return-void
.end method

.method public setScrimsShown(Z)V
    .locals 5

    .prologue
    .line 488
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimsShown(ZZ)V

    .line 489
    return-void

    .line 488
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setScrimsShown(ZZ)V
    .locals 5

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 503
    move v3, v2

    if-eqz v3, :cond_2

    .line 504
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_1

    const/16 v4, 0xff

    :goto_0
    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->animateScrim(I)V

    .line 508
    :goto_1
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimsAreShown:Z

    .line 510
    :cond_0
    return-void

    .line 504
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 506
    :cond_2
    move-object v3, v0

    move v4, v1

    if-eqz v4, :cond_3

    const/16 v4, 0xff

    :goto_2
    invoke-direct {v3, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setScrimAlpha(I)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 617
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 618
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 621
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mStatusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 622
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 623
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mScrimAlpha:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 624
    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 626
    :cond_1
    return-void
.end method

.method public setStatusBarScrimColor(I)V
    .locals 7
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 639
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 640
    return-void
.end method

.method public setStatusBarScrimResource(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 651
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move v4, v1

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrim(Landroid/graphics/drawable/Drawable;)V

    .line 652
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 434
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 435
    return-void
.end method

.method public setTitleEnabled(Z)V
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    if-eq v2, v3, :cond_0

    .line 460
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CollapsingToolbarLayout;->mCollapsingTitleEnabled:Z

    .line 461
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->updateDummyView()V

    .line 462
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingToolbarLayout;->requestLayout()V

    .line 464
    :cond_0
    return-void
.end method
