.class public Landroid/support/design/widget/TextInputLayout;
.super Landroid/widget/LinearLayout;
.source "TextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0xc8

.field private static final INVALID_MAX_LENGTH:I = -0x1


# instance fields
.field private mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

.field private mCounterEnabled:Z

.field private mCounterMaxLength:I

.field private mCounterOverflowTextAppearance:I

.field private mCounterOverflowed:Z

.field private mCounterTextAppearance:I

.field private mCounterView:Landroid/widget/TextView;

.field private mDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mEditText:Landroid/widget/EditText;

.field private mErrorEnabled:Z

.field private mErrorShown:Z

.field private mErrorTextAppearance:I

.field private mErrorView:Landroid/widget/TextView;

.field private mFocusedTextColor:Landroid/content/res/ColorStateList;

.field private mHint:Ljava/lang/CharSequence;

.field private mHintAnimationEnabled:Z

.field private mIndicatorArea:Landroid/widget/LinearLayout;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/TextInputLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 15

    .prologue
    .line 101
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    move-object v8, v0

    new-instance v9, Landroid/support/design/widget/CollapsingTextHelper;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    invoke-direct {v10, v11}, Landroid/support/design/widget/CollapsingTextHelper;-><init>(Landroid/view/View;)V

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    .line 103
    move-object v8, v1

    invoke-static {v8}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 105
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setOrientation(I)V

    .line 106
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setWillNotDraw(Z)V

    .line 107
    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setAddStatesFromChildren(Z)V

    .line 109
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    sget-object v9, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setPositionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 111
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const v9, 0x800033

    invoke-virtual {v8, v9}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextGravity(I)V

    .line 113
    move-object v8, v1

    move-object v9, v2

    sget-object v10, Landroid/support/design/R$styleable;->TextInputLayout:[I

    move v11, v3

    sget v12, Landroid/support/design/R$style;->Widget_Design_TextInputLayout:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v4, v8

    .line 115
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_android_hint:I

    invoke-virtual {v9, v10}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 116
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_hintAnimationEnabled:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v8, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 119
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 120
    move-object v8, v0

    move-object v9, v0

    move-object v10, v4

    sget v11, Landroid/support/design/R$styleable;->TextInputLayout_android_textColorHint:I

    invoke-virtual {v10, v11}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    iput-object v9, v8, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 124
    :cond_0
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v5, v8

    .line 126
    move v8, v5

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    .line 127
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_hintTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setHintTextAppearance(I)V

    .line 131
    :cond_1
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_errorTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    .line 132
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_errorEnabled:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move v6, v8

    .line 134
    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TextInputLayout_counterEnabled:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move v7, v8

    .line 136
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_counterMaxLength:I

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setCounterMaxLength(I)V

    .line 138
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_counterTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    .line 140
    move-object v8, v0

    move-object v9, v4

    sget v10, Landroid/support/design/R$styleable;->TextInputLayout_counterOverflowTextAppearance:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v8, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    .line 142
    move-object v8, v4

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 145
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/design/widget/TextInputLayout;->setCounterEnabled(Z)V

    .line 147
    move-object v8, v0

    invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v8

    if-nez v8, :cond_2

    .line 150
    move-object v8, v0

    const/4 v9, 0x1

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 154
    :cond_2
    move-object v8, v0

    new-instance v9, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/support/design/widget/TextInputLayout$TextInputAccessibilityDelegate;-><init>(Landroid/support/design/widget/TextInputLayout;Landroid/support/design/widget/TextInputLayout$1;)V

    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 155
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/TextInputLayout;Z)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/design/widget/TextInputLayout;)Z
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TextInputLayout;I)V
    .locals 4

    .prologue
    .line 59
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/support/design/widget/TextInputLayout;)Landroid/support/design/widget/CollapsingTextHelper;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/EditText;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/TextInputLayout;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v0, v1

    return-object v0
.end method

.method private addIndicator(Landroid/widget/TextView;I)V
    .locals 11

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-nez v5, :cond_0

    .line 333
    move-object v5, v0

    new-instance v6, Landroid/widget/LinearLayout;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    .line 334
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 335
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 339
    new-instance v5, Landroid/support/v4/widget/Space;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;)V

    move-object v3, v5

    .line 340
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v4, v5

    .line 341
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 344
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 347
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 349
    return-void
.end method

.method private adjustIndicatorPadding()V
    .locals 6

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getPaddingBottom()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 355
    return-void
.end method

.method private animateToExpansionFraction(F)V
    .locals 7

    .prologue
    .line 652
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v2}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v2

    move v3, v1

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 668
    :goto_0
    return-void

    .line 655
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_1

    .line 656
    move-object v2, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 657
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 658
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/16 v3, 0xc8

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 659
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$4;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$4;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 666
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v3}, Landroid/support/design/widget/CollapsingTextHelper;->getExpansionFraction()F

    move-result v3

    move v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setFloatValues(FF)V

    .line 667
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 668
    goto :goto_0
.end method

.method private static arrayContains([II)Z
    .locals 8

    .prologue
    .line 717
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 718
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 719
    const/4 v6, 0x1

    move v0, v6

    .line 722
    :goto_1
    return v0

    .line 717
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 722
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private collapseHint(Z)V
    .locals 4

    .prologue
    .line 630
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 631
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 633
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 634
    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 638
    :goto_0
    return-void

    .line 636
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private expandHint(Z)V
    .locals 4

    .prologue
    .line 641
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 642
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 644
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    if-eqz v2, :cond_1

    .line 645
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->animateToExpansionFraction(F)V

    .line 649
    :goto_0
    return-void

    .line 647
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpansionFraction(F)V

    goto :goto_0
.end method

.method private getThemeAttrColor(I)I
    .locals 8

    .prologue
    .line 671
    move-object v0, p0

    move v1, p1

    new-instance v3, Landroid/util/TypedValue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    move-object v2, v3

    .line 672
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 673
    move-object v3, v2

    iget v3, v3, Landroid/util/TypedValue;->data:I

    move v0, v3

    .line 675
    :goto_0
    return v0

    :cond_0
    const v3, -0xff01

    move v0, v3

    goto :goto_0
.end method

.method private removeIndicator(Landroid/widget/TextView;)V
    .locals 4

    .prologue
    .line 358
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    .line 359
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 360
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 361
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 364
    :cond_0
    return-void
.end method

.method private setEditText(Landroid/widget/EditText;)V
    .locals 7

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 189
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string v4, "We already have an EditText, can only have one"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    .line 194
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 195
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextSize(F)V

    .line 196
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getGravity()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextGravity(I)V

    .line 199
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    new-instance v3, Landroid/support/design/widget/TextInputLayout$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$1;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_1

    .line 217
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 221
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 222
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    .line 224
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 227
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 228
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 231
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mIndicatorArea:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    .line 232
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->adjustIndicatorPadding()V

    .line 236
    :cond_4
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 237
    return-void
.end method

.method private updateCounter(I)V
    .locals 11

    .prologue
    .line 522
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    move v2, v3

    .line 523
    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 524
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 535
    :goto_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v3, v4, :cond_0

    .line 536
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 537
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 539
    :cond_0
    return-void

    .line 527
    :cond_1
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    if-le v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v3, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    .line 528
    move v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eq v3, v4, :cond_2

    .line 529
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v5, :cond_4

    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowTextAppearance:I

    :goto_2
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 532
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/design/R$string;->character_counter_pattern:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 527
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 529
    :cond_4
    move-object v5, v0

    iget v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    goto :goto_2
.end method

.method private updateEditTextBackground()V
    .locals 5

    .prologue
    .line 542
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 544
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 554
    :goto_0
    return-void

    .line 546
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 547
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 550
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/widget/TintManager;->get(Landroid/content/Context;)Landroid/support/v7/widget/TintManager;

    move-result-object v2

    move-object v1, v2

    .line 551
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v3, v1

    sget v4, Landroid/support/design/R$drawable;->abc_edit_text_material:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/TintManager;->getTintList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    :goto_0
    move-object v2, v3

    .line 244
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    if-nez v3, :cond_0

    .line 245
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    .line 247
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 248
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextSize()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 249
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    neg-float v4, v4

    float-to-int v4, v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 251
    move-object v3, v2

    move-object v0, v3

    return-object v0

    .line 242
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private updateLabelVisibility(Z)V
    .locals 7

    .prologue
    .line 255
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    move v2, v5

    .line 256
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getDrawableState()[I

    move-result-object v5

    const v6, 0x101009c

    invoke-static {v5, v6}, Landroid/support/design/widget/TextInputLayout;->arrayContains([II)Z

    move-result v5

    move v3, v5

    .line 257
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 259
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_0

    .line 260
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedTextColor(I)V

    .line 263
    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterOverflowed:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    .line 264
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    .line 273
    :cond_1
    :goto_2
    move v5, v2

    if-nez v5, :cond_2

    move v5, v3

    if-nez v5, :cond_2

    move v5, v4

    if-eqz v5, :cond_8

    .line 275
    :cond_2
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/TextInputLayout;->collapseHint(Z)V

    .line 280
    :goto_3
    return-void

    .line 255
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 257
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 265
    :cond_5
    move v5, v4

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v5, :cond_6

    .line 266
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_2

    .line 267
    :cond_6
    move v5, v3

    if-eqz v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_7

    .line 268
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_2

    .line 269
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    if-eqz v5, :cond_1

    .line 270
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TextInputLayout;->mDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextColor(I)V

    goto :goto_2

    .line 278
    :cond_8
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/TextInputLayout;->expandHint(Z)V

    goto :goto_3
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    instance-of v4, v4, Landroid/widget/EditText;

    if-eqz v4, :cond_0

    .line 160
    move-object v4, v0

    move-object v5, v1

    check-cast v5, Landroid/widget/EditText;

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V

    .line 161
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Landroid/support/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-super {v4, v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 597
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 598
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->draw(Landroid/graphics/Canvas;)V

    .line 599
    return-void
.end method

.method public getCounterMaxLength()I
    .locals 2

    .prologue
    .line 518
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    move v0, v1

    return v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v0, v1

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 566
    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    .line 568
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v1}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isErrorEnabled()Z
    .locals 2

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    move v0, v1

    return v0
.end method

.method public isHintAnimationEnabled()Z
    .locals 2

    .prologue
    .line 580
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    move v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 14

    .prologue
    .line 603
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    invoke-super/range {v8 .. v13}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 605
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v8, :cond_0

    .line 606
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getLeft()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getCompoundPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    move v6, v8

    .line 607
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getRight()I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    move v7, v8

    .line 609
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v9, v6

    move-object v10, v0

    iget-object v10, v10, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getTop()I

    move-result v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    move v11, v7

    move-object v12, v0

    iget-object v12, v12, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getBottom()I

    move-result v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/design/widget/CollapsingTextHelper;->setExpandedBounds(IIII)V

    .line 615
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v9, v6

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TextInputLayout;->getPaddingTop()I

    move-result v10

    move v11, v7

    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/design/widget/TextInputLayout;->getPaddingBottom()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedBounds(IIII)V

    .line 618
    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v8}, Landroid/support/design/widget/CollapsingTextHelper;->recalculate()V

    .line 620
    :cond_0
    return-void
.end method

.method public refreshDrawableState()V
    .locals 3

    .prologue
    .line 624
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 626
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    invoke-direct {v1, v2}, Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 627
    return-void
.end method

.method public setCounterEnabled(Z)V
    .locals 7

    .prologue
    .line 475
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 476
    move v2, v1

    if-eqz v2, :cond_2

    .line 477
    move-object v2, v0

    new-instance v3, Landroid/widget/TextView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    .line 478
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 479
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TextInputLayout;->mCounterTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 480
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 482
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 483
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 484
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 492
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    .line 494
    :cond_0
    return-void

    .line 486
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    goto :goto_0

    .line 489
    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 490
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setCounterMaxLength(I)V
    .locals 4

    .prologue
    .line 502
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 503
    move v2, v1

    if-lez v2, :cond_1

    .line 504
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    .line 508
    :goto_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z

    if-eqz v2, :cond_0

    .line 509
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/TextInputLayout;->mCounterMaxLength:I

    goto :goto_0

    .line 509
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    goto :goto_1
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    if-nez v2, :cond_1

    .line 420
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :goto_0
    return-void

    .line 425
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->setErrorEnabled(Z)V

    .line 428
    :cond_1
    move-object v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 429
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 430
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/TextInputLayout$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$2;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 444
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 445
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 446
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 467
    :cond_2
    :goto_1
    goto :goto_0

    .line 448
    :cond_3
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 449
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Landroid/support/design/widget/TextInputLayout$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/design/widget/TextInputLayout$3;-><init>(Landroid/support/design/widget/TextInputLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 463
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 464
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    goto :goto_1
.end method

.method public setErrorEnabled(Z)V
    .locals 7

    .prologue
    .line 374
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 375
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 376
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 379
    :cond_0
    move v2, v1

    if-eqz v2, :cond_2

    .line 380
    move-object v2, v0

    new-instance v3, Landroid/widget/TextView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    .line 381
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/design/widget/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TextInputLayout;->mErrorTextAppearance:I

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 382
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 383
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 385
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TextInputLayout;->addIndicator(Landroid/widget/TextView;I)V

    .line 392
    :goto_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mErrorEnabled:Z

    .line 394
    :cond_1
    return-void

    .line 387
    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mErrorShown:Z

    .line 388
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TextInputLayout;->updateEditTextBackground()V

    .line 389
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    invoke-direct {v2, v3}, Landroid/support/design/widget/TextInputLayout;->removeIndicator(Landroid/widget/TextView;)V

    .line 390
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mErrorView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TextInputLayout;->mHint:Ljava/lang/CharSequence;

    .line 297
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setText(Ljava/lang/CharSequence;)V

    .line 299
    move-object v2, v0

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TextInputLayout;->sendAccessibilityEvent(I)V

    .line 300
    return-void
.end method

.method public setHintAnimationEnabled(Z)V
    .locals 4

    .prologue
    .line 592
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/TextInputLayout;->mHintAnimationEnabled:Z

    .line 593
    return-void
.end method

.method public setHintTextAppearance(I)V
    .locals 5
    .param p1    # I
        .annotation build Landroid/support/annotation/StyleRes;
        .end annotation
    .end param

    .prologue
    .line 318
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/CollapsingTextHelper;->setCollapsedTextAppearance(I)V

    .line 319
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    invoke-virtual {v4}, Landroid/support/design/widget/CollapsingTextHelper;->getCollapsedTextColor()I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, v3, Landroid/support/design/widget/TextInputLayout;->mFocusedTextColor:Landroid/content/res/ColorStateList;

    .line 321
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    .line 322
    move-object v3, v0

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateLabelVisibility(Z)V

    .line 325
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/design/widget/TextInputLayout;->updateEditTextMargin(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    move-object v2, v3

    .line 326
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TextInputLayout;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestLayout()V

    .line 329
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 4
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TextInputLayout;->mCollapsingTextHelper:Landroid/support/design/widget/CollapsingTextHelper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/CollapsingTextHelper;->setTypefaces(Landroid/graphics/Typeface;)V

    .line 175
    return-void
.end method
