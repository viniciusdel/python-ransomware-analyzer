.class public Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public anchorGravity:I

.field public gravity:I

.field public keyline:I

.field mAnchorDirectChild:Landroid/view/View;

.field mAnchorId:I

.field mAnchorView:Landroid/view/View;

.field mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

.field mBehaviorResolved:Z

.field mBehaviorTag:Ljava/lang/Object;

.field private mDidAcceptNestedScroll:Z

.field private mDidBlockInteraction:Z

.field private mDidChangeAfterNestedScroll:Z

.field final mLastChildRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 2214
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2174
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2181
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2187
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2194
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2200
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2209
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2215
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .prologue
    .line 2218
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2174
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2181
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2187
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2194
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2200
    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2209
    move-object v4, v0

    new-instance v5, Landroid/graphics/Rect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2220
    move-object v4, v1

    move-object v5, v2

    sget-object v6, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams:[I

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    move-object v3, v4

    .line 2223
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_android_layout_gravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2226
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchor:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2228
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_anchorGravity:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2232
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_keyline:I

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v5

    iput v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2235
    move-object v4, v0

    move-object v5, v3

    sget v6, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    iput-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2237
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-eqz v4, :cond_0

    .line 2238
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    sget v8, Landroid/support/design/R$styleable;->CoordinatorLayout_LayoutParams_layout_behavior:I

    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    iput-object v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2242
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 2243
    return-void
.end method

.method public constructor <init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 6

    .prologue
    .line 2246
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2181
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2187
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2194
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2200
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2209
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2247
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 6

    .prologue
    .line 2254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2174
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2181
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2187
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2194
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2200
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2209
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2255
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 6

    .prologue
    .line 2250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2174
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2181
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 2187
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 2194
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    .line 2200
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2209
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    .line 2251
    return-void
.end method

.method private resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V
    .locals 12

    .prologue
    .line 2465
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    iget v7, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2466
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v5, :cond_4

    .line 2467
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 2468
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 2469
    :goto_0
    move-object v5, v4

    move-object v6, v2

    if-eq v5, v6, :cond_3

    move-object v5, v4

    if-eqz v5, :cond_3

    .line 2471
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    .line 2472
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2473
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2493
    :goto_1
    return-void

    .line 2476
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string v7, "Anchor must not be a descendant of the anchored view"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2479
    :cond_1
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_2

    .line 2480
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v3, v5

    .line 2470
    :cond_2
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_0

    .line 2483
    :cond_3
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2493
    goto :goto_1

    .line 2485
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout;->isInEditMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2486
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v10, v6

    move-object v11, v7

    move-object v6, v11

    move-object v7, v10

    move-object v8, v11

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2487
    goto :goto_1

    .line 2489
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find CoordinatorLayout descendant view with id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    iget v9, v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to anchor view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z
    .locals 11

    .prologue
    .line 2501
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    if-eq v5, v6, :cond_0

    .line 2502
    const/4 v5, 0x0

    move v0, v5

    .line 2518
    :goto_0
    return v0

    .line 2505
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v3, v5

    .line 2506
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    .line 2507
    :goto_1
    move-object v5, v4

    move-object v6, v2

    if-eq v5, v6, :cond_4

    .line 2509
    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_2

    .line 2510
    :cond_1
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    move-object v8, v10

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2511
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 2513
    :cond_2
    move-object v5, v4

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_3

    .line 2514
    move-object v5, v4

    check-cast v5, Landroid/view/View;

    move-object v3, v5

    .line 2508
    :cond_3
    move-object v5, v4

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 2517
    :cond_4
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    .line 2518
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method


# virtual methods
.method acceptNestedScroll(Z)V
    .locals 4

    .prologue
    .line 2383
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2384
    return-void
.end method

.method checkAnchorChanged()Z
    .locals 3

    .prologue
    .line 2329
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-nez v1, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    .prologue
    .line 2411
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method didBlockInteraction()Z
    .locals 3

    .prologue
    .line 2340
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-nez v1, :cond_0

    .line 2341
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2343
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move v0, v1

    return v0
.end method

.method findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;
    .locals 9

    .prologue
    .line 2435
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 2436
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v7, v4

    move-object v8, v5

    move-object v4, v8

    move-object v5, v7

    move-object v6, v8

    iput-object v6, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2437
    const/4 v3, 0x0

    move-object v0, v3

    .line 2443
    :goto_0
    return-object v0

    .line 2440
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->verifyAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2441
    :cond_1
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resolveAnchorView(Landroid/view/View;Landroid/support/design/widget/CoordinatorLayout;)V

    .line 2443
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    move-object v0, v3

    goto :goto_0
.end method

.method public getAnchorId()I
    .locals 2

    .prologue
    .line 2263
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    move v0, v1

    return v0
.end method

.method public getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .locals 2

    .prologue
    .line 2288
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v0, v1

    return-object v0
.end method

.method getChangedAfterNestedScroll()Z
    .locals 2

    .prologue
    .line 2391
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    move v0, v1

    return v0
.end method

.method getLastChildRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 2321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    move-object v0, v1

    return-object v0
.end method

.method invalidateAnchor()V
    .locals 7

    .prologue
    .line 2422
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const/4 v3, 0x0

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    iput-object v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    .line 2423
    return-void
.end method

.method isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 10

    .prologue
    .line 2358
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    if-eqz v3, :cond_0

    .line 2359
    const/4 v3, 0x1

    move v0, v3

    .line 2362
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-boolean v4, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->blocksInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v5

    :goto_1
    or-int/2addr v4, v5

    move-object v8, v3

    move v9, v4

    move v3, v9

    move-object v4, v8

    move v5, v9

    iput-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method isDirty(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z
    .locals 6

    .prologue
    .line 2457
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->isDirty(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

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

.method isNestedScrollAccepted()Z
    .locals 2

    .prologue
    .line 2387
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    move v0, v1

    return v0
.end method

.method resetChangedAfterNestedScroll()V
    .locals 3

    .prologue
    .line 2399
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2400
    return-void
.end method

.method resetNestedScroll()V
    .locals 3

    .prologue
    .line 2379
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidAcceptNestedScroll:Z

    .line 2380
    return-void
.end method

.method resetTouchBehaviorTracking()V
    .locals 3

    .prologue
    .line 2375
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidBlockInteraction:Z

    .line 2376
    return-void
.end method

.method public setAnchorId(I)V
    .locals 4

    .prologue
    .line 2277
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->invalidateAnchor()V

    .line 2278
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorId:I

    .line 2279
    return-void
.end method

.method public setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    .locals 4

    .prologue
    .line 2301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-object v3, v1

    if-eq v2, v3, :cond_0

    .line 2302
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 2303
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2304
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 2306
    :cond_0
    return-void
.end method

.method setChangedAfterNestedScroll(Z)V
    .locals 4

    .prologue
    .line 2395
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mDidChangeAfterNestedScroll:Z

    .line 2396
    return-void
.end method

.method setLastChildRect(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 2313
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mLastChildRect:Landroid/graphics/Rect;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2314
    return-void
.end method
