.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 461
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 465
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .locals 6

    .prologue
    .line 665
    move-object v0, p0

    move-object v2, v0

    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "dispatchStartTemporaryDetach"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 667
    move-object v2, v0

    const-class v3, Landroid/view/View;

    const-string v4, "dispatchFinishTemporaryDetach"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :goto_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    .line 673
    return-void

    .line 669
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 670
    const-string v2, "ViewCompat"

    const-string v3, "Couldn\'t find method"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 8

    .prologue
    .line 936
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v5

    move v3, v5

    .line 937
    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 939
    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 943
    :goto_0
    return v0

    .line 940
    :cond_0
    move v5, v2

    if-gez v5, :cond_2

    .line 941
    move v5, v3

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 943
    :cond_2
    move v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .locals 8

    .prologue
    .line 948
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v5

    move v3, v5

    .line 949
    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v5

    move-object v6, v1

    invoke-interface {v6}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v6

    sub-int/2addr v5, v6

    move v4, v5

    .line 951
    move v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move v0, v5

    .line 955
    :goto_0
    return v0

    .line 952
    :cond_0
    move v5, v2

    if-gez v5, :cond_2

    .line 953
    move v5, v3

    if-lez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 955
    :cond_2
    move v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    const/4 v5, 0x1

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .locals 6

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v0, v2

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/ScrollingView;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/ScrollingView;

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 6

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/ScrollingView;

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/ScrollingView;

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public combineMeasuredStates(II)I
    .locals 5

    .prologue
    .line 1026
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    move v4, v2

    or-int/2addr v3, v4

    move v0, v3

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 883
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 643
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v3, :cond_0

    .line 644
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 646
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 648
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 656
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 650
    const-string v3, "ViewCompat"

    const-string v4, "Error calling dispatchFinishTemporaryDetach"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 651
    goto :goto_0

    .line 654
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_0
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .locals 9

    .prologue
    .line 1004
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    instance-of v5, v5, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v5, :cond_0

    .line 1005
    move-object v5, v1

    check-cast v5, Landroid/support/v4/view/NestedScrollingChild;

    move v6, v2

    move v7, v3

    move v8, v4

    invoke-interface {v5, v6, v7, v8}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v5

    move v0, v5

    .line 1008
    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .locals 7

    .prologue
    .line 1013
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    instance-of v4, v4, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v4, :cond_0

    .line 1014
    move-object v4, v1

    check-cast v4, Landroid/support/v4/view/NestedScrollingChild;

    move v5, v2

    move v6, v3

    invoke-interface {v4, v5, v6}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v4

    move v0, v4

    .line 1016
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .locals 11

    .prologue
    .line 994
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v1

    instance-of v6, v6, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v6, :cond_0

    .line 995
    move-object v6, v1

    check-cast v6, Landroid/support/v4/view/NestedScrollingChild;

    move v7, v2

    move v8, v3

    move-object v9, v4

    move-object v10, v5

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v6

    move v0, v6

    .line 998
    :goto_0
    return v0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .locals 13

    .prologue
    .line 984
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v1

    instance-of v7, v7, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v7, :cond_0

    .line 985
    move-object v7, v1

    check-cast v7, Landroid/support/v4/view/NestedScrollingChild;

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    move-object v12, v6

    invoke-interface/range {v7 .. v12}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v7

    move v0, v7

    .line 988
    :goto_0
    return v0

    :cond_0
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 626
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v3, :cond_0

    .line 627
    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    .line 629
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 631
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 639
    :goto_0
    return-void

    .line 632
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 633
    const-string v3, "ViewCompat"

    const-string v4, "Error calling dispatchStartTemporaryDetach"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 634
    goto :goto_0

    .line 637
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_0
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 601
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 3

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 538
    move-object v0, p0

    move-object v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    move v0, v2

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 3

    .prologue
    .line 917
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .locals 3

    .prologue
    .line 932
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 847
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 829
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 857
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method getFrameTime()J
    .locals 3

    .prologue
    .line 520
    move-object v0, p0

    const-wide/16 v1, 0xa

    move-wide v0, v1

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 523
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 547
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 544
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 558
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 591
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 596
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 586
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 727
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 722
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getOverScrollMode(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 477
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x2

    move v0, v2

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 616
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 611
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .locals 3

    .prologue
    .line 568
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 797
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 802
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 697
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 707
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 712
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 717
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1046
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 811
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 677
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 682
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 838
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 816
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 687
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .locals 3

    .prologue
    .line 692
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .locals 5

    .prologue
    .line 1031
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v3

    add-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 488
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 975
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 976
    move-object v2, v1

    check-cast v2, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {v2}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v2

    move v0, v2

    .line 978
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1041
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 660
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 502
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1036
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 529
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 1021
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 909
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 910
    move-object v2, v1

    check-cast v2, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {v2}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v2

    move v0, v2

    .line 912
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isOpaque(Landroid/view/View;)Z
    .locals 5

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v2, v3

    .line 574
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 575
    move-object v3, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 577
    :goto_1
    return v0

    .line 575
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 577
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 898
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 868
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .locals 4

    .prologue
    .line 878
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 496
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .prologue
    .line 499
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .prologue
    .line 493
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 508
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 509
    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 511
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->invalidate(IIII)V

    .line 512
    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 7

    .prologue
    .line 514
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 515
    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .locals 11

    .prologue
    .line 517
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v7

    move-wide v9, v3

    add-long/2addr v7, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v5

    .line 518
    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 821
    return-void
.end method

.method public resolveSizeAndState(III)I
    .locals 6

    .prologue
    .line 581
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v2

    invoke-static {v4, v5}, Landroid/view/View;->resolveSize(II)I

    move-result v4

    move v0, v4

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 607
    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 894
    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 5

    .prologue
    .line 922
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    .line 923
    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 5

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    .line 928
    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 0

    .prologue
    .line 853
    return-void
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 843
    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 825
    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 863
    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 527
    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 551
    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 554
    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 542
    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 564
    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 902
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v3, :cond_0

    .line 903
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/NestedScrollingChild;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 905
    :cond_0
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .locals 0

    .prologue
    .line 874
    return-void
.end method

.method public setOverScrollMode(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 481
    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .locals 11

    .prologue
    .line 621
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    move v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 622
    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 788
    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 793
    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 758
    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 763
    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 768
    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 773
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 1052
    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 1057
    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 807
    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 743
    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 748
    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 834
    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 778
    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .locals 0

    .prologue
    .line 783
    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .locals 5

    .prologue
    .line 960
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v3, :cond_0

    .line 961
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/NestedScrollingChild;

    move v4, v2

    invoke-interface {v3, v4}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v3

    move v0, v3

    .line 963
    :goto_0
    return v0

    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 968
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v2, :cond_0

    .line 969
    move-object v2, v1

    check-cast v2, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {v2}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    .line 971
    :cond_0
    return-void
.end method
