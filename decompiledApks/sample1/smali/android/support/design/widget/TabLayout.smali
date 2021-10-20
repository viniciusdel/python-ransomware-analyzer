.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabStrip;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38


# instance fields
.field private mContentInsetStart:I

.field private mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private mMode:I

.field private mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mScrollableTabMinWidth:I

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabClickListener:Landroid/view/View$OnClickListener;

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextMultiLineSize:F

.field private mTabTextSize:F

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 222
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .prologue
    .line 226
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 227
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    .prologue
    .line 230
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 188
    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 205
    move-object v7, v0

    const v8, 0x7fffffff

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 232
    move-object v7, v1

    invoke-static {v7}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 235
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 238
    move-object v7, v0

    new-instance v8, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v9, v10, v11}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 239
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v9, -0x2

    const/4 v10, -0x1

    invoke-virtual {v7, v8, v9, v10}, Landroid/support/design/widget/TabLayout;->addView(Landroid/view/View;II)V

    .line 241
    move-object v7, v1

    move-object v8, v2

    sget-object v9, Landroid/support/design/R$styleable;->TabLayout:[I

    move v10, v3

    sget v11, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v4, v7

    .line 244
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 246
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 248
    move-object v7, v0

    move-object v8, v0

    move-object v9, v0

    move-object v10, v0

    move-object v11, v4

    sget v12, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    move-object v14, v10

    move v15, v11

    move v10, v15

    move-object v11, v14

    move v12, v15

    iput v12, v11, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    move-object v14, v9

    move v15, v10

    move v9, v15

    move-object v10, v14

    move v11, v15

    iput v11, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    move-object v14, v8

    move v15, v9

    move v8, v15

    move-object v9, v14

    move v10, v15

    iput v10, v9, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 250
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 252
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 254
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 256
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 259
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v10, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 263
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    sget-object v9, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    move-object v5, v7

    .line 266
    move-object v7, v0

    move-object v8, v5

    :try_start_0
    sget v9, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 267
    move-object v7, v0

    move-object v8, v5

    sget v9, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 274
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v8, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 277
    :cond_0
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 281
    move-object v7, v4

    sget v8, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    move v6, v7

    .line 282
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    move v9, v6

    invoke-static {v8, v9}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 285
    :cond_1
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 287
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 289
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 290
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 291
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 292
    move-object v7, v0

    move-object v8, v4

    sget v9, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 293
    move-object v7, v4

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 296
    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v6, v7

    .line 297
    move-object v7, v0

    move-object v8, v6

    sget v9, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 298
    move-object v7, v0

    move-object v8, v6

    sget v9, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v7, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    .line 301
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 302
    return-void

    .line 269
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move-object v7, v6

    throw v7
.end method

.method static synthetic access$100(Landroid/support/design/widget/TabLayout;I)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTab(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/support/design/widget/TabLayout;)F
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/TabLayout;)F
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    move v0, v1

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mMode:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1400(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$1500(Landroid/support/design/widget/TabLayout;I)I
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$1600(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v0, v1

    return v0
.end method

.method static synthetic access$1602(Landroid/support/design/widget/TabLayout;I)I
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v0, v2

    return v0
.end method

.method static synthetic access$1700(Landroid/support/design/widget/TabLayout;Z)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method static synthetic access$1802(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/ValueAnimatorCompat;)Landroid/support/design/widget/ValueAnimatorCompat;
    .locals 7

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/TabLayout;I)Landroid/support/design/widget/TabLayout$TabView;
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->getTabView(I)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    move v0, v1

    return v0
.end method

.method static synthetic access$400(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    move v0, v1

    return v0
.end method

.method static synthetic access$500(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    move v0, v1

    return v0
.end method

.method static synthetic access$600(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    move v0, v1

    return v0
.end method

.method static synthetic access$700(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    move v0, v1

    return v0
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout;)I
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    move v0, v1

    return v0
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 9

    .prologue
    .line 703
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v5

    move-object v4, v5

    .line 704
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v6, v4

    move v7, v2

    move-object v8, v0

    invoke-direct {v8}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 705
    move v5, v3

    if-eqz v5, :cond_0

    .line 706
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 708
    :cond_0
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 7

    .prologue
    .line 695
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v4

    move-object v3, v4

    .line 696
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move-object v5, v3

    move-object v6, v0

    invoke-direct {v6}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    move v4, v2

    if-eqz v4, :cond_0

    .line 698
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 700
    :cond_0
    return-void
.end method

.method private animateToTab(I)V
    .locals 9

    .prologue
    .line 794
    move-object v0, p0

    move v1, p1

    move v4, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 828
    :goto_0
    return-void

    .line 798
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 802
    :cond_1
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 803
    goto :goto_0

    .line 806
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v4

    move v2, v4

    .line 807
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v4

    move v3, v4

    .line 809
    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_4

    .line 810
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v4, :cond_3

    .line 811
    move-object v4, v0

    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 812
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v5, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 813
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    const/16 v5, 0x12c

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 814
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v5, Landroid/support/design/widget/TabLayout$2;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout$2;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v4, v5}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 822
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 823
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v4}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 827
    :cond_4
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v5, v1

    const/16 v6, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    .line 828
    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 7

    .prologue
    .line 894
    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    .line 895
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v2, :cond_0

    .line 897
    const/4 v2, 0x0

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    move v1, v2

    .line 899
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 901
    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 910
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 911
    return-void

    .line 903
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    .line 904
    goto :goto_0

    .line 906
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v3, 0x800003

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 901
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 10

    .prologue
    .line 877
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v7, :cond_3

    .line 878
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v8, v1

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v3, v7

    .line 879
    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :goto_0
    move-object v4, v7

    .line 882
    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_1
    move v5, v7

    .line 883
    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    :goto_2
    move v6, v7

    .line 885
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    move v8, v5

    move v9, v6

    add-int/2addr v8, v9

    int-to-float v8, v8

    move v9, v2

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    move-object v8, v3

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    move v0, v7

    .line 890
    :goto_3
    return v0

    .line 879
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 882
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 883
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 890
    :cond_3
    const/4 v7, 0x0

    move v0, v7

    goto :goto_3
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 8

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 675
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 677
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 678
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 679
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout$Tab;

    move v6, v4

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 678
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 681
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    .line 1673
    move v0, p0

    move v1, p1

    const/4 v5, 0x2

    new-array v5, v5, [[I

    move-object v2, v5

    .line 1674
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v3, v5

    .line 1675
    const/4 v5, 0x0

    move v4, v5

    .line 1677
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v7, v5, v6

    .line 1678
    move-object v5, v3

    move v6, v4

    move v7, v1

    aput v7, v5, v6

    .line 1679
    add-int/lit8 v4, v4, 0x1

    .line 1682
    move-object v5, v2

    move v6, v4

    sget-object v7, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v7, v5, v6

    .line 1683
    move-object v5, v3

    move v6, v4

    move v7, v0

    aput v7, v5, v6

    .line 1684
    add-int/lit8 v4, v4, 0x1

    .line 1686
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v5

    return-object v0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .prologue
    .line 711
    move-object v0, p0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v1, v2

    .line 713
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 714
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 9

    .prologue
    .line 656
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Landroid/support/design/widget/TabLayout$TabView;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;Landroid/support/design/widget/TabLayout$Tab;)V

    move-object v2, v3

    .line 657
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 658
    move-object v3, v2

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 660
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    if-nez v3, :cond_0

    .line 661
    move-object v3, v0

    new-instance v4, Landroid/support/design/widget/TabLayout$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v4, v3, Landroid/support/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    .line 669
    :cond_0
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 670
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private dpToPx(I)I
    .locals 4

    .prologue
    .line 728
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    move v3, v1

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method private getDefaultHeight()I
    .locals 7

    .prologue
    .line 1690
    move-object v0, p0

    const/4 v5, 0x0

    move v1, v5

    .line 1691
    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v2

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 1692
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/TabLayout$Tab;

    move-object v4, v5

    .line 1693
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1694
    const/4 v5, 0x1

    move v1, v5

    .line 1698
    :cond_0
    move v5, v1

    if-eqz v5, :cond_2

    const/16 v5, 0x48

    :goto_1
    move v0, v5

    return v0

    .line 1691
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1698
    :cond_2
    const/16 v5, 0x30

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 2

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v1

    move v0, v1

    return v0
.end method

.method private getTabMaxWidth()I
    .locals 2

    .prologue
    .line 1711
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    move v0, v1

    return v0
.end method

.method private getTabMinWidth()I
    .locals 3

    .prologue
    .line 1702
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1704
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    move v0, v1

    .line 1707
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_1

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getTabView(I)Landroid/support/design/widget/TabLayout$TabView;
    .locals 4

    .prologue
    .line 691
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$TabView;

    move-object v0, v2

    return-object v0
.end method

.method private removeTabViewAt(I)V
    .locals 4

    .prologue
    .line 789
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 790
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 791
    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 8

    .prologue
    .line 831
    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    move v2, v5

    .line 832
    move v5, v1

    move v6, v2

    if-ge v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isSelected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 833
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 834
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 835
    move-object v5, v4

    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setSelected(Z)V

    .line 833
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 835
    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    .line 838
    :cond_1
    return-void
.end method

.method private updateAllTabs()V
    .locals 5

    .prologue
    .line 650
    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    move v2, v3

    :goto_0
    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    .line 651
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout;->updateTab(I)V

    .line 650
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    :cond_0
    return-void
.end method

.method private updateTab(I)V
    .locals 5

    .prologue
    .line 684
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Landroid/support/design/widget/TabLayout;->getTabView(I)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v3

    move-object v2, v3

    .line 685
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 686
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$TabView;->update()V

    .line 688
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 4

    .prologue
    .line 718
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v2, :cond_0

    .line 719
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 720
    move-object v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 725
    :goto_0
    return-void

    .line 722
    :cond_0
    move-object v2, v1

    const/4 v3, -0x2

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 723
    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private updateTabViews(Z)V
    .locals 6

    .prologue
    .line 914
    move-object v0, p0

    move v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 915
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object v3, v4

    .line 916
    move-object v4, v3

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setMinimumWidth(I)V

    .line 917
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 918
    move v4, v1

    if-eqz v4, :cond_0

    .line 919
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->requestLayout()V

    .line 914
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 922
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 361
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 362
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 7
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 372
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 373
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 9
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 401
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v4

    move-object v5, v0

    if-eq v4, v5, :cond_0

    .line 402
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "Tab belongs to a different TabLayout."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 405
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 406
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 407
    move v4, v3

    if-eqz v4, :cond_1

    .line 408
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 410
    :cond_1
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 7
    .param p1    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v3

    move-object v4, v0

    if-eq v3, v4, :cond_0

    .line 383
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Tab belongs to a different TabLayout."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 386
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 387
    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 388
    move v3, v2

    if-eqz v3, :cond_1

    .line 389
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 391
    :cond_1
    return-void
.end method

.method public getSelectedTabPosition()I
    .locals 2

    .prologue
    .line 457
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 448
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    move-object v0, v2

    return-object v0
.end method

.method public getTabCount()I
    .locals 2

    .prologue
    .line 440
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTabGravity()I
    .locals 2

    .prologue
    .line 564
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v0, v1

    return v0
.end method

.method public getTabMode()I
    .locals 2

    .prologue
    .line 542
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/TabLayout;->mMode:I

    move v0, v1

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 582
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    move-object v0, v1

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 431
    move-object v0, p0

    new-instance v1, Landroid/support/design/widget/TabLayout$Tab;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;-><init>(Landroid/support/design/widget/TabLayout;)V

    move-object v0, v1

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 13

    .prologue
    .line 735
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v9, v0

    move-object v10, v0

    invoke-direct {v10}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v10

    invoke-direct {v9, v10}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    move v3, v9

    .line 736
    move v9, v2

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 747
    :goto_0
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    move v4, v9

    .line 748
    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    if-eqz v9, :cond_0

    .line 751
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    if-lez v10, :cond_2

    move-object v10, v0

    iget v10, v10, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    :goto_1
    iput v10, v9, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 757
    :cond_0
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 759
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 762
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object v5, v9

    .line 763
    const/4 v9, 0x0

    move v6, v9

    .line 765
    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v9, :pswitch_data_0

    .line 777
    :goto_2
    move v9, v6

    if-eqz v9, :cond_1

    .line 779
    move v9, v2

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v11

    add-int/2addr v10, v11

    move-object v11, v5

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v9, v10, v11}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v9

    move v7, v9

    .line 781
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v8, v9

    .line 783
    move-object v9, v5

    move v10, v8

    move v11, v7

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 786
    :cond_1
    return-void

    .line 738
    :sswitch_0
    move v9, v3

    move v10, v2

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    .line 741
    goto :goto_0

    .line 743
    :sswitch_1
    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    goto :goto_0

    .line 751
    :cond_2
    move v10, v4

    move-object v11, v0

    const/16 v12, 0x38

    invoke-direct {v11, v12}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v11

    sub-int/2addr v10, v11

    goto :goto_1

    .line 769
    :pswitch_0
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v10

    if-ge v9, v10, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 770
    goto :goto_2

    .line 769
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 773
    :pswitch_1
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    move-object v10, v0

    invoke-virtual {v10}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v10

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_4
    move v6, v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 736
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 765
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllTabs()V
    .locals 5

    .prologue
    .line 504
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeAllViews()V

    .line 506
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 507
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    move-object v2, v3

    .line 508
    move-object v3, v2

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 509
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 510
    goto :goto_0

    .line 512
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 513
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 6

    .prologue
    .line 467
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v2

    move-object v3, v0

    if-eq v2, v3, :cond_0

    .line 468
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Tab does not belong to this TabLayout."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 471
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 472
    return-void
.end method

.method public removeTabAt(I)V
    .locals 11

    .prologue
    .line 481
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v6}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v6

    :goto_0
    move v2, v6

    .line 482
    move-object v6, v0

    move v7, v1

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 484
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v7, v1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    move-object v3, v6

    .line 485
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 486
    move-object v6, v3

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 489
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v6

    .line 490
    move v6, v1

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_2

    .line 491
    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/TabLayout$Tab;

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 490
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 481
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 494
    :cond_2
    move v6, v2

    move v7, v1

    if-ne v6, v7, :cond_3

    .line 495
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v6, v7}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 497
    :cond_3
    return-void

    .line 495
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    const/4 v8, 0x0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 5

    .prologue
    .line 841
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 842
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 8

    .prologue
    .line 845
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    move-object v5, v1

    if-ne v4, v5, :cond_2

    .line 846
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_1

    .line 847
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v4, :cond_0

    .line 848
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v4, v5}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 850
    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 874
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    move v4, v2

    if-eqz v4, :cond_5

    .line 854
    move-object v4, v1

    if-eqz v4, :cond_7

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v4

    :goto_1
    move v3, v4

    .line 855
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 856
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 858
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_8

    :cond_4
    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_8

    .line 861
    move-object v4, v0

    move v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 866
    :cond_5
    :goto_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v4, :cond_6

    .line 867
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v4, v5}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 869
    :cond_6
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 870
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v4, :cond_1

    .line 871
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v4, v5}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    .line 854
    :cond_7
    const/4 v4, -0x1

    goto :goto_1

    .line 863
    :cond_8
    move-object v4, v0

    move v5, v3

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 4

    .prologue
    .line 419
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 420
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 8

    .prologue
    .line 333
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mIndicatorAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v4}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    :goto_0
    return-void

    .line 336
    :cond_0
    move v4, v1

    if-ltz v4, :cond_1

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-lt v4, v5, :cond_2

    .line 337
    :cond_1
    goto :goto_0

    .line 341
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 342
    move-object v4, v0

    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 345
    move v4, v3

    if-eqz v4, :cond_3

    .line 346
    move-object v4, v0

    move v5, v1

    int-to-float v5, v5

    move v6, v2

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 348
    :cond_3
    goto :goto_0
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 310
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 311
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 4

    .prologue
    .line 319
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 320
    return-void
.end method

.method public setTabGravity(I)V
    .locals 4

    .prologue
    .line 551
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 552
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 553
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 555
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 4

    .prologue
    .line 529
    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq v2, v3, :cond_0

    .line 530
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 531
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 533
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 6

    .prologue
    .line 589
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 590
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 571
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 572
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 573
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 575
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 8
    .param p1    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 644
    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    move v3, v4

    :goto_0
    move v4, v2

    move v5, v3

    if-ge v4, v5, :cond_0

    .line 645
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 644
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 647
    :cond_0
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 9
    .param p1    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 610
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    move-object v2, v4

    .line 611
    move-object v4, v2

    if-nez v4, :cond_0

    .line 612
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 616
    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 619
    move-object v4, v1

    new-instance v5, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 622
    move-object v4, v0

    new-instance v5, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 625
    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 626
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    move v3, v4

    .line 627
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v4

    move v5, v3

    if-eq v4, v5, :cond_1

    .line 628
    move-object v4, v0

    move-object v5, v0

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 631
    :cond_1
    return-void
.end method
