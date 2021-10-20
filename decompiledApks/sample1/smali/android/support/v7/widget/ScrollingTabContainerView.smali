.class public Landroid/support/v7/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;,
        Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field mMaxTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 78
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 71
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V

    iput-object v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    .line 80
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    .line 82
    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v3

    move-object v2, v3

    .line 83
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 84
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 86
    move-object v3, v0

    move-object v4, v0

    invoke-direct {v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    .line 87
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ScrollingTabContainerView;)Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    .locals 6

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 8

    .prologue
    .line 210
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/AppCompatSpinner;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 212
    move-object v2, v1

    new-instance v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 216
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;
    .locals 8

    .prologue
    .line 200
    move-object v0, p0

    new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTabBarStyle:I

    invoke-direct {v3, v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, v2

    .line 202
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V

    .line 203
    move-object v2, v1

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V

    .line 204
    move-object v2, v1

    new-instance v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method private createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
    .locals 11

    .prologue
    .line 289
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v4, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v7

    move-object v8, v1

    move v9, v2

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V

    move-object v3, v4

    .line 290
    move v4, v2

    if-eqz v4, :cond_0

    .line 291
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    move-object v4, v3

    new-instance v5, Landroid/widget/AbsListView$LayoutParams;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, -0x1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 302
    :goto_0
    move-object v4, v3

    move-object v0, v4

    return-object v0

    .line 295
    :cond_0
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    .line 297
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v4, :cond_1

    .line 298
    move-object v4, v0

    new-instance v5, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/widget/ScrollingTabContainerView$1;)V

    iput-object v5, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    .line 300
    :cond_1
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 3

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    move-object v2, v0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 152
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    .line 153
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    .line 155
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 156
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 159
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/support/v7/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    .line 162
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 163
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 165
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 166
    goto :goto_0
.end method

.method private performExpand()Z
    .locals 8

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 175
    :goto_0
    return v0

    .line 171
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 172
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, -0x2

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 175
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
    .locals 14

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v5

    move-object v4, v5

    .line 322
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move-object v6, v4

    move v7, v2

    new-instance v8, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v11, v12}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 324
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    .line 325
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 327
    :cond_0
    move v5, v3

    if-eqz v5, :cond_1

    .line 328
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 330
    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v5, :cond_2

    .line 331
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 333
    :cond_2
    return-void
.end method

.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
    .locals 12

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-result-object v4

    move-object v3, v4

    .line 307
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move-object v5, v3

    new-instance v6, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_0

    .line 310
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v4}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 312
    :cond_0
    move v4, v2

    if-eqz v4, :cond_1

    .line 313
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    .line 315
    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v4, :cond_2

    .line 316
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 318
    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 9

    .prologue
    .line 257
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v2, v3

    .line 258
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    .line 259
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    .line 261
    :cond_0
    move-object v3, v0

    new-instance v4, Landroid/support/v7/widget/ScrollingTabContainerView$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    .line 268
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    move-result v3

    .line 269
    return-void
.end method

.method public animateToVisibility(I)V
    .locals 7

    .prologue
    .line 232
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v3, :cond_0

    .line 233
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 235
    :cond_0
    move v3, v1

    if-nez v3, :cond_2

    .line 236
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 237
    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 240
    :cond_1
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move-object v2, v3

    .line 241
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 243
    move-object v3, v2

    sget-object v4, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 244
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-object v5, v2

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 245
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 254
    :goto_0
    return-void

    .line 247
    :cond_2
    move-object v3, v0

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    move-object v2, v3

    .line 248
    move-object v3, v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 250
    move-object v3, v2

    sget-object v4, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 251
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-object v5, v2

    move v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    .line 252
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    .line 273
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 274
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 276
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 278
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 221
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;

    move-result-object v3

    move-object v2, v3

    .line 227
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V

    .line 228
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, v3, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    .line 229
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 282
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 283
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 284
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 286
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    move-object v7, v2

    check-cast v7, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    move-object v6, v7

    .line 368
    move-object v7, v6

    invoke-virtual {v7}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/app/ActionBar$Tab;->select()V

    .line 369
    return-void
.end method

.method public onMeasure(II)V
    .locals 12

    .prologue
    .line 93
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, v1

    invoke-static {v9}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    move v3, v9

    .line 94
    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    .line 95
    move-object v9, v0

    move v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    .line 97
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v9

    move v5, v9

    .line 98
    move v9, v5

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    move v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    if-eq v9, v10, :cond_0

    move v9, v3

    const/high16 v10, -0x80000000

    if-ne v9, v10, :cond_4

    .line 100
    :cond_0
    move v9, v5

    const/4 v10, 0x2

    if-le v9, v10, :cond_3

    .line 101
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3ecccccd    # 0.4f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 105
    :goto_1
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    .line 110
    :goto_2
    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    move v2, v9

    .line 112
    move v9, v4

    if-nez v9, :cond_5

    move-object v9, v0

    iget-boolean v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    .line 114
    move v9, v6

    if-eqz v9, :cond_7

    .line 116
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    const/4 v10, 0x0

    move v11, v2

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V

    .line 117
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v9}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I

    move-result v9

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    if-le v9, v10, :cond_6

    .line 118
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/ScrollingTabContainerView;->performCollapse()V

    .line 126
    :goto_4
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v9

    move v7, v9

    .line 127
    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 128
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v9

    move v8, v9

    .line 130
    move v9, v4

    if-eqz v9, :cond_1

    move v9, v7

    move v10, v8

    if-eq v9, v10, :cond_1

    .line 132
    move-object v9, v0

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 134
    :cond_1
    return-void

    .line 94
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 103
    :cond_3
    move-object v9, v0

    move v10, v1

    invoke-static {v10}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    const/4 v11, 0x2

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_1

    .line 107
    :cond_4
    move-object v9, v0

    const/4 v10, -0x1

    iput v10, v9, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .line 112
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 120
    :cond_6
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    move-result v9

    goto :goto_4

    .line 123
    :cond_7
    move-object v9, v0

    invoke-direct {v9}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z

    move-result v9

    goto :goto_4
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 374
    return-void
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 356
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutCompat;->removeAllViews()V

    .line 357
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 358
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 360
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_1

    .line 361
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 363
    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 4

    .prologue
    .line 346
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->removeViewAt(I)V

    .line 347
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 348
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 350
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v2, :cond_1

    .line 351
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 353
    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 4

    .prologue
    .line 146
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    .line 147
    return-void
.end method

.method public setContentHeight(I)V
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I

    .line 196
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 197
    return-void
.end method

.method public setTabSelected(I)V
    .locals 8

    .prologue
    .line 179
    move-object v0, p0

    move v1, p1

    move-object v6, v0

    move v7, v1

    iput v7, v6, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    .line 180
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I

    move-result v6

    move v2, v6

    .line 181
    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 182
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v4, v6

    .line 183
    move v6, v3

    move v7, v1

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 184
    move-object v6, v4

    move v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 185
    move v6, v5

    if-eqz v6, :cond_0

    .line 186
    move-object v6, v0

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 181
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 189
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v6, :cond_3

    move v6, v1

    if-ltz v6, :cond_3

    .line 190
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 192
    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 4

    .prologue
    .line 336
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V

    .line 337
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_0

    .line 338
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    .line 340
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v2, :cond_1

    .line 341
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V

    .line 343
    :cond_1
    return-void
.end method
