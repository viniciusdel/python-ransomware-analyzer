.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$Decor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$1;,
        Landroid/support/v4/view/PagerTitleStrip$PageListener;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;,
        Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field private mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    .line 74
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101038c

    aput v3, v1, v2

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 103
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    goto :goto_0

    .line 67
    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 15

    .prologue
    .line 118
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    move-object v8, v0

    const/4 v9, -0x1

    iput v9, v8, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 56
    move-object v8, v0

    const/high16 v9, -0x40800000    # -1.0f

    iput v9, v8, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 63
    move-object v8, v0

    new-instance v9, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;Landroid/support/v4/view/PagerTitleStrip$1;)V

    iput-object v9, v8, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 120
    move-object v8, v0

    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 121
    move-object v8, v0

    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 122
    move-object v8, v0

    move-object v9, v0

    new-instance v10, Landroid/widget/TextView;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v13, v9

    move-object v14, v10

    move-object v9, v14

    move-object v10, v13

    move-object v11, v14

    iput-object v11, v10, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 124
    move-object v8, v1

    move-object v9, v2

    sget-object v10, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v3, v8

    .line 125
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    move v4, v8

    .line 126
    move v8, v4

    if-eqz v8, :cond_0

    .line 127
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object v9, v1

    move v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 128
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object v9, v1

    move v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 129
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object v9, v1

    move v10, v4

    invoke-virtual {v8, v9, v10}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 131
    :cond_0
    move-object v8, v3

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    move v5, v8

    .line 132
    move v8, v5

    if-eqz v8, :cond_1

    .line 133
    move-object v8, v0

    const/4 v9, 0x0

    move v10, v5

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 135
    :cond_1
    move-object v8, v3

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 136
    move-object v8, v3

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    move v6, v8

    .line 137
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 139
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    :cond_2
    move-object v8, v0

    move-object v9, v3

    const/4 v10, 0x3

    const/16 v11, 0x50

    invoke-virtual {v9, v10, v11}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v9

    iput v9, v8, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 142
    move-object v8, v3

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 144
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v9

    iput v9, v8, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 145
    move-object v8, v0

    const v9, 0x3f19999a    # 0.6f

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 147
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 149
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 151
    const/4 v8, 0x0

    move v6, v8

    .line 152
    move v8, v4

    if-eqz v8, :cond_3

    .line 153
    move-object v8, v1

    move v9, v4

    sget-object v10, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v8

    move-object v7, v8

    .line 154
    move-object v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    move v6, v8

    .line 155
    move-object v8, v7

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 158
    :cond_3
    move v8, v6

    if-eqz v8, :cond_4

    .line 159
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 160
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 161
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 168
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    move v7, v8

    .line 169
    move-object v8, v0

    const/high16 v9, 0x41800000    # 16.0f

    move v10, v7

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 170
    return-void

    .line 163
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 164
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    .line 165
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/support/v4/view/PagerTitleStrip;)F
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    move v0, v1

    return v0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 110
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;

    move-object v2, v0

    invoke-interface {v1, v2}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 111
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 4

    .prologue
    .line 468
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    .line 469
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 470
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 471
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    move v1, v3

    .line 473
    :cond_0
    move v3, v1

    move v0, v3

    return v0
.end method

.method public getTextSpacing()I
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move v0, v1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 8

    .prologue
    .line 244
    move-object v0, p0

    move-object v4, v0

    invoke-super {v4}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 246
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v1, v4

    .line 247
    move-object v4, v1

    instance-of v4, v4, Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_0

    .line 248
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 252
    :cond_0
    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/ViewPager;

    move-object v2, v4

    .line 253
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    move-object v3, v4

    .line 255
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v4

    .line 256
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 257
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 258
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/PagerAdapter;

    :goto_0
    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 259
    return-void

    .line 258
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 264
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 265
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 266
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v1

    .line 267
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 268
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 270
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    .prologue
    .line 461
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v7, :cond_0

    .line 462
    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    move-object v7, v0

    iget v7, v7, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    :goto_0
    move v6, v7

    .line 463
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move v9, v6

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 465
    :cond_0
    return-void

    .line 462
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 18

    .prologue
    .line 425
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v13, v1

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    move v3, v13

    .line 426
    move v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    if-eq v13, v14, :cond_0

    .line 427
    new-instance v13, Ljava/lang/IllegalStateException;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    const-string v15, "Must measure with an exact width"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 430
    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v13

    move-object v14, v0

    invoke-virtual {v14}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    move v4, v13

    .line 431
    move v13, v2

    move v14, v4

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v13

    move v5, v13

    .line 434
    move v13, v1

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v6, v13

    .line 435
    move v13, v6

    int-to-float v13, v13

    const v14, 0x3e4ccccd    # 0.2f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move v7, v13

    .line 436
    move v13, v1

    move v14, v7

    const/4 v15, -0x2

    invoke-static {v13, v14, v15}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v13

    move v8, v13

    .line 439
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    .line 440
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    .line 441
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v14, v8

    move v15, v5

    invoke-virtual {v13, v14, v15}, Landroid/widget/TextView;->measure(II)V

    .line 444
    move v13, v2

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    move v10, v13

    .line 445
    move v13, v10

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v13, v14, :cond_1

    .line 446
    move v13, v2

    invoke-static {v13}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    move v9, v13

    .line 453
    :goto_0
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v13

    move v11, v13

    .line 454
    move v13, v9

    move v14, v2

    move v15, v11

    const/16 v16, 0x10

    shl-int/lit8 v15, v15, 0x10

    invoke-static {v13, v14, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v13

    move v12, v13

    .line 456
    move-object v13, v0

    move v14, v6

    move v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 457
    return-void

    .line 448
    :cond_1
    move-object v13, v0

    iget-object v13, v13, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    move v11, v13

    .line 449
    move-object v13, v0

    invoke-virtual {v13}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v13

    move v12, v13

    .line 450
    move v13, v12

    move v14, v11

    move v15, v4

    add-int/2addr v14, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v9, v13

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 2

    .prologue
    .line 313
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v1, :cond_0

    .line 314
    move-object v1, v0

    invoke-super {v1}, Landroid/view/ViewGroup;->requestLayout()V

    .line 316
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 4

    .prologue
    .line 238
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 239
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 240
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 6
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    iput v4, v3, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 196
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v2, v3

    .line 197
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    return-void
.end method

.method public setTextColor(I)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 208
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 209
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    const/16 v4, 0x18

    shl-int/lit8 v3, v3, 0x18

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    move v2, v3

    .line 211
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 212
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 213
    return-void
.end method

.method public setTextSize(IF)V
    .locals 6

    .prologue
    .line 226
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 227
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 228
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 229
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 179
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 180
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 8

    .prologue
    .line 319
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-eqz v3, :cond_0

    .line 320
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 321
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 323
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 324
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 325
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 327
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_2

    .line 328
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 329
    move-object v3, v0

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 330
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 331
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 15

    .prologue
    .line 273
    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v2

    if-eqz v11, :cond_3

    move-object v11, v2

    invoke-virtual {v11}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v11

    :goto_0
    move v3, v11

    .line 274
    move-object v11, v0

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 276
    const/4 v11, 0x0

    move-object v4, v11

    .line 277
    move v11, v1

    const/4 v12, 0x1

    if-lt v11, v12, :cond_0

    move-object v11, v2

    if-eqz v11, :cond_0

    .line 278
    move-object v11, v2

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v4, v11

    .line 280
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object v12, v2

    if-eqz v12, :cond_4

    move v12, v1

    move v13, v3

    if-ge v12, v13, :cond_4

    move-object v12, v2

    move v13, v1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_1
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const/4 v11, 0x0

    move-object v4, v11

    .line 286
    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    move v12, v3

    if-ge v11, v12, :cond_1

    move-object v11, v2

    if-eqz v11, :cond_1

    .line 287
    move-object v11, v2

    move v12, v1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v11

    move-object v4, v11

    .line 289
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object v12, v4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    move v5, v11

    .line 293
    const/4 v11, 0x0

    move v12, v5

    int-to-float v12, v12

    const v13, 0x3f4ccccd    # 0.8f

    mul-float/2addr v12, v13

    float-to-int v12, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v6, v11

    .line 294
    move v11, v6

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v7, v11

    .line 295
    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v11

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    move-object v12, v0

    invoke-virtual {v12}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    move v8, v11

    .line 296
    const/4 v11, 0x0

    move v12, v8

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    move v9, v11

    .line 297
    move v11, v9

    const/high16 v12, -0x80000000

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    move v10, v11

    .line 298
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 299
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 300
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move v12, v7

    move v13, v10

    invoke-virtual {v11, v12, v13}, Landroid/widget/TextView;->measure(II)V

    .line 302
    move-object v11, v0

    move v12, v1

    iput v12, v11, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 304
    move-object v11, v0

    iget-boolean v11, v11, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v11, :cond_2

    .line 305
    move-object v11, v0

    move v12, v1

    move-object v13, v0

    iget v13, v13, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 308
    :cond_2
    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 309
    return-void

    .line 273
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 282
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method updateTextPositions(IFZ)V
    .locals 47

    .prologue
    .line 336
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v41, v3

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v42, v0

    move/from16 v0, v41

    move/from16 v1, v42

    if-eq v0, v1, :cond_2

    .line 337
    move-object/from16 v41, v2

    move/from16 v42, v3

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v43

    invoke-virtual/range {v41 .. v43}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 342
    :cond_0
    move-object/from16 v41, v2

    const/16 v42, 0x1

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 344
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v41

    move/from16 v6, v41

    .line 345
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v41

    move/from16 v7, v41

    .line 346
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v41

    move/from16 v8, v41

    .line 347
    move/from16 v41, v7

    const/16 v42, 0x2

    div-int/lit8 v41, v41, 0x2

    move/from16 v9, v41

    .line 349
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v41

    move/from16 v10, v41

    .line 350
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v41

    move/from16 v11, v41

    .line 351
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v41

    move/from16 v12, v41

    .line 352
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v41

    move/from16 v13, v41

    .line 353
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v41

    move/from16 v14, v41

    .line 354
    move-object/from16 v41, v2

    invoke-virtual/range {v41 .. v41}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v41

    move/from16 v15, v41

    .line 355
    move/from16 v41, v12

    move/from16 v42, v9

    add-int v41, v41, v42

    move/from16 v16, v41

    .line 356
    move/from16 v41, v13

    move/from16 v42, v9

    add-int v41, v41, v42

    move/from16 v17, v41

    .line 357
    move/from16 v41, v10

    move/from16 v42, v16

    sub-int v41, v41, v42

    move/from16 v42, v17

    sub-int v41, v41, v42

    move/from16 v18, v41

    .line 359
    move/from16 v41, v4

    const/high16 v42, 0x3f000000    # 0.5f

    add-float v41, v41, v42

    move/from16 v19, v41

    .line 360
    move/from16 v41, v19

    const/high16 v42, 0x3f800000    # 1.0f

    cmpl-float v41, v41, v42

    if-lez v41, :cond_1

    .line 361
    move/from16 v41, v19

    const/high16 v42, 0x3f800000    # 1.0f

    sub-float v41, v41, v42

    move/from16 v19, v41

    .line 363
    :cond_1
    move/from16 v41, v10

    move/from16 v42, v17

    sub-int v41, v41, v42

    move/from16 v42, v18

    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v42, v0

    move/from16 v43, v19

    mul-float v42, v42, v43

    move/from16 v0, v42

    float-to-int v0, v0

    move/from16 v42, v0

    sub-int v41, v41, v42

    move/from16 v20, v41

    .line 364
    move/from16 v41, v20

    move/from16 v42, v7

    const/16 v43, 0x2

    div-int/lit8 v42, v42, 0x2

    sub-int v41, v41, v42

    move/from16 v21, v41

    .line 365
    move/from16 v41, v21

    move/from16 v42, v7

    add-int v41, v41, v42

    move/from16 v22, v41

    .line 367
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getBaseline()I

    move-result v41

    move/from16 v23, v41

    .line 368
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getBaseline()I

    move-result v41

    move/from16 v24, v41

    .line 369
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Landroid/widget/TextView;->getBaseline()I

    move-result v41

    move/from16 v25, v41

    .line 370
    move/from16 v41, v23

    move/from16 v42, v24

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v42, v25

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v26, v41

    .line 371
    move/from16 v41, v26

    move/from16 v42, v23

    sub-int v41, v41, v42

    move/from16 v27, v41

    .line 372
    move/from16 v41, v26

    move/from16 v42, v24

    sub-int v41, v41, v42

    move/from16 v28, v41

    .line 373
    move/from16 v41, v26

    move/from16 v42, v25

    sub-int v41, v41, v42

    move/from16 v29, v41

    .line 374
    move/from16 v41, v27

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v30, v41

    .line 375
    move/from16 v41, v28

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v31, v41

    .line 376
    move/from16 v41, v29

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v42, v0

    invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v42

    add-int v41, v41, v42

    move/from16 v32, v41

    .line 377
    move/from16 v41, v30

    move/from16 v42, v31

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v42, v32

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v33, v41

    .line 380
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v41, v0

    const/16 v42, 0x70

    and-int/lit8 v41, v41, 0x70

    move/from16 v34, v41

    .line 385
    move/from16 v41, v34

    sparse-switch v41, :sswitch_data_0

    .line 388
    move/from16 v41, v14

    move/from16 v42, v27

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 389
    move/from16 v41, v14

    move/from16 v42, v28

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 390
    move/from16 v41, v14

    move/from16 v42, v29

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 407
    :goto_0
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move/from16 v42, v21

    move/from16 v43, v36

    move/from16 v44, v22

    move/from16 v45, v36

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v45, v45, v46

    invoke-virtual/range {v41 .. v45}, Landroid/widget/TextView;->layout(IIII)V

    .line 410
    move/from16 v41, v12

    move/from16 v42, v21

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    sub-int v42, v42, v43

    move/from16 v43, v6

    sub-int v42, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->min(II)I

    move-result v41

    move/from16 v38, v41

    .line 411
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move/from16 v42, v38

    move/from16 v43, v35

    move/from16 v44, v38

    move/from16 v45, v6

    add-int v44, v44, v45

    move/from16 v45, v35

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v45, v45, v46

    invoke-virtual/range {v41 .. v45}, Landroid/widget/TextView;->layout(IIII)V

    .line 414
    move/from16 v41, v10

    move/from16 v42, v13

    sub-int v41, v41, v42

    move/from16 v42, v8

    sub-int v41, v41, v42

    move/from16 v42, v22

    move-object/from16 v43, v2

    move-object/from16 v0, v43

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    move/from16 v43, v0

    add-int v42, v42, v43

    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->max(II)I

    move-result v41

    move/from16 v39, v41

    .line 416
    move-object/from16 v41, v2

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v41, v0

    move/from16 v42, v39

    move/from16 v43, v37

    move/from16 v44, v39

    move/from16 v45, v8

    add-int v44, v44, v45

    move/from16 v45, v37

    move-object/from16 v46, v2

    move-object/from16 v0, v46

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v45, v45, v46

    invoke-virtual/range {v41 .. v45}, Landroid/widget/TextView;->layout(IIII)V

    .line 419
    move-object/from16 v41, v2

    move/from16 v42, v4

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 420
    move-object/from16 v41, v2

    const/16 v42, 0x0

    move/from16 v0, v42

    move-object/from16 v1, v41

    iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 421
    :goto_1
    return-void

    .line 338
    :cond_2
    move/from16 v41, v5

    if-nez v41, :cond_0

    move/from16 v41, v4

    move-object/from16 v42, v2

    move-object/from16 v0, v42

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    move/from16 v42, v0

    cmpl-float v41, v41, v42

    if-nez v41, :cond_0

    .line 339
    goto :goto_1

    .line 393
    :sswitch_0
    move/from16 v41, v11

    move/from16 v42, v14

    sub-int v41, v41, v42

    move/from16 v42, v15

    sub-int v41, v41, v42

    move/from16 v38, v41

    .line 394
    move/from16 v41, v38

    move/from16 v42, v33

    sub-int v41, v41, v42

    const/16 v42, 0x2

    div-int/lit8 v41, v41, 0x2

    move/from16 v39, v41

    .line 395
    move/from16 v41, v39

    move/from16 v42, v27

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 396
    move/from16 v41, v39

    move/from16 v42, v28

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 397
    move/from16 v41, v39

    move/from16 v42, v29

    add-int v41, v41, v42

    move/from16 v37, v41

    .line 398
    goto/16 :goto_0

    .line 400
    :sswitch_1
    move/from16 v41, v11

    move/from16 v42, v15

    sub-int v41, v41, v42

    move/from16 v42, v33

    sub-int v41, v41, v42

    move/from16 v40, v41

    .line 401
    move/from16 v41, v40

    move/from16 v42, v27

    add-int v41, v41, v42

    move/from16 v35, v41

    .line 402
    move/from16 v41, v40

    move/from16 v42, v28

    add-int v41, v41, v42

    move/from16 v36, v41

    .line 403
    move/from16 v41, v40

    move/from16 v42, v29

    add-int v41, v41, v42

    move/from16 v37, v41

    goto/16 :goto_0

    .line 385
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
