.class Landroid/support/v7/widget/RecyclerView$ViewFlinger;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewFlinger"
.end annotation


# instance fields
.field private mEatRunOnAnimationRequest:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastFlingX:I

.field private mLastFlingY:I

.field private mReSchedulePostAnimationCallback:Z

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 5

    .prologue
    .line 3776
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 3767
    move-object v2, v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2800()Landroid/view/animation/Interpolator;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3771
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3774
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3777
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2800()Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 3778
    return-void
.end method

.method private computeScrollDuration(IIII)I
    .locals 22

    .prologue
    .line 3935
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v18, v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v7, v18

    .line 3936
    move/from16 v18, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v8, v18

    .line 3937
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    const/16 v18, 0x1

    :goto_0
    move/from16 v9, v18

    .line 3938
    move/from16 v18, v5

    move/from16 v19, v5

    mul-int v18, v18, v19

    move/from16 v19, v6

    move/from16 v20, v6

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 3939
    move/from16 v18, v3

    move/from16 v19, v3

    mul-int v18, v18, v19

    move/from16 v19, v4

    move/from16 v20, v4

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .line 3940
    move/from16 v18, v9

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v18

    :goto_1
    move/from16 v12, v18

    .line 3941
    move/from16 v18, v12

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v13, v18

    .line 3942
    const/high16 v18, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v19, v19, v20

    move/from16 v20, v12

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v14, v18

    .line 3943
    move/from16 v18, v13

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v2

    move/from16 v21, v14

    invoke-direct/range {v20 .. v21}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->distanceInfluenceForSnapDuration(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v15, v18

    .line 3947
    move/from16 v18, v10

    if-lez v18, :cond_2

    .line 3948
    const/16 v18, 0x4

    const/high16 v19, 0x447a0000    # 1000.0f

    move/from16 v20, v15

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    mul-float v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v19

    mul-int v18, v18, v19

    move/from16 v16, v18

    .line 3953
    :goto_2
    move/from16 v18, v16

    const/16 v19, 0x7d0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v18

    move/from16 v2, v18

    return v2

    .line 3937
    :cond_0
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 3940
    :cond_1
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v18

    goto :goto_1

    .line 3950
    :cond_2
    move/from16 v18, v9

    if-eqz v18, :cond_3

    move/from16 v18, v7

    :goto_3
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v17, v18

    .line 3951
    move/from16 v18, v17

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    const/high16 v19, 0x43960000    # 300.0f

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v16, v18

    goto :goto_2

    .line 3950
    :cond_3
    move/from16 v18, v8

    goto :goto_3
.end method

.method private disableRunOnAnimationRequests()V
    .locals 3

    .prologue
    .line 3892
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3893
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3894
    return-void
.end method

.method private distanceInfluenceForSnapDuration(F)F
    .locals 6

    .prologue
    .line 3929
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    move v1, v2

    .line 3930
    move v2, v1

    float-to-double v2, v2

    const-wide v4, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v2, v4

    double-to-float v2, v2

    move v1, v2

    .line 3931
    move v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    move v0, v2

    return v0
.end method

.method private enableRunOnAnimationRequests()V
    .locals 3

    .prologue
    .line 3897
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    .line 3898
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-eqz v1, :cond_0

    .line 3899
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 3901
    :cond_0
    return-void
.end method


# virtual methods
.method public fling(II)V
    .locals 14

    .prologue
    .line 3913
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3914
    move-object v3, v0

    move-object v4, v0

    const/4 v5, 0x0

    move-object v12, v4

    move v13, v5

    move v4, v13

    move-object v5, v12

    move v6, v13

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3915
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v1

    move v7, v2

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    const/high16 v10, -0x80000000

    const v11, 0x7fffffff

    invoke-virtual/range {v3 .. v11}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 3917
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 3918
    return-void
.end method

.method postOnAnimation()V
    .locals 3

    .prologue
    .line 3904
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mEatRunOnAnimationRequest:Z

    if-eqz v1, :cond_0

    .line 3905
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    .line 3910
    :goto_0
    return-void

    .line 3907
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 3908
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public run()V
    .locals 19

    .prologue
    .line 3782
    move-object/from16 v1, p0

    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->disableRunOnAnimationRequests()V

    .line 3783
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$400(Landroid/support/v7/widget/RecyclerView;)V

    .line 3786
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    move-object v2, v15

    .line 3787
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v15

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$LayoutManager;->mSmoothScroller:Landroid/support/v7/widget/RecyclerView$SmoothScroller;

    move-object v3, v15

    .line 3788
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 3789
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v15

    move v4, v15

    .line 3790
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v15

    move v5, v15

    .line 3791
    move v15, v4

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v6, v15

    .line 3792
    move v15, v5

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v7, v15

    .line 3793
    const/4 v15, 0x0

    move v8, v15

    .line 3794
    const/4 v15, 0x0

    move v9, v15

    .line 3795
    move-object v15, v1

    move/from16 v16, v4

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3796
    move-object v15, v1

    move/from16 v16, v5

    move/from16 v0, v16

    iput v0, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    .line 3797
    const/4 v15, 0x0

    move v10, v15

    const/4 v15, 0x0

    move v11, v15

    .line 3798
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v15

    if-eqz v15, :cond_2

    .line 3799
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->eatRequestLayout()V

    .line 3800
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$3000(Landroid/support/v7/widget/RecyclerView;)V

    .line 3801
    const-string v15, "RV Scroll"

    invoke-static {v15}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3802
    move v15, v6

    if-eqz v15, :cond_0

    .line 3803
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v15

    move/from16 v16, v6

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v15

    move v8, v15

    .line 3804
    move v15, v6

    move/from16 v16, v8

    sub-int v15, v15, v16

    move v10, v15

    .line 3806
    :cond_0
    move v15, v7

    if-eqz v15, :cond_1

    .line 3807
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v15

    move/from16 v16, v7

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object/from16 v18, v0

    invoke-virtual/range {v15 .. v18}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v15

    move v9, v15

    .line 3808
    move v15, v7

    move/from16 v16, v9

    sub-int v15, v15, v16

    move v11, v15

    .line 3810
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3811
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$3100(Landroid/support/v7/widget/RecyclerView;)V

    .line 3813
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$3200(Landroid/support/v7/widget/RecyclerView;)V

    .line 3814
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3816
    move-object v15, v3

    if-eqz v15, :cond_2

    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v15

    if-nez v15, :cond_2

    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isRunning()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3818
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v15

    move v12, v15

    .line 3819
    move v15, v12

    if-nez v15, :cond_15

    .line 3820
    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 3829
    :cond_2
    :goto_0
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$3400(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_3

    .line 3830
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3832
    :cond_3
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 3834
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move/from16 v16, v6

    move/from16 v17, v7

    invoke-static/range {v15 .. v17}, Landroid/support/v7/widget/RecyclerView;->access$3500(Landroid/support/v7/widget/RecyclerView;II)V

    .line 3836
    :cond_4
    move v15, v10

    if-nez v15, :cond_5

    move v15, v11

    if-eqz v15, :cond_b

    .line 3837
    :cond_5
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v15

    float-to-int v15, v15

    move v12, v15

    .line 3839
    const/4 v15, 0x0

    move v13, v15

    .line 3840
    move v15, v10

    move/from16 v16, v4

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    .line 3841
    move v15, v10

    if-gez v15, :cond_17

    move v15, v12

    neg-int v15, v15

    :goto_1
    move v13, v15

    .line 3844
    :cond_6
    const/4 v15, 0x0

    move v14, v15

    .line 3845
    move v15, v11

    move/from16 v16, v5

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 3846
    move v15, v11

    if-gez v15, :cond_19

    move v15, v12

    neg-int v15, v15

    :goto_2
    move v14, v15

    .line 3849
    :cond_7
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    .line 3851
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move/from16 v16, v13

    move/from16 v17, v14

    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/RecyclerView;->absorbGlows(II)V

    .line 3853
    :cond_8
    move v15, v13

    if-nez v15, :cond_9

    move v15, v10

    move/from16 v16, v4

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v15

    if-nez v15, :cond_b

    :cond_9
    move v15, v14

    if-nez v15, :cond_a

    move v15, v11

    move/from16 v16, v5

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v15

    if-nez v15, :cond_b

    .line 3855
    :cond_a
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 3858
    :cond_b
    move v15, v8

    if-nez v15, :cond_c

    move v15, v9

    if-eqz v15, :cond_d

    .line 3859
    :cond_c
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Landroid/support/v7/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3862
    :cond_d
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$3600(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v15

    if-nez v15, :cond_e

    .line 3863
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 3866
    :cond_e
    move v15, v7

    if-eqz v15, :cond_1b

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v15

    if-eqz v15, :cond_1b

    move v15, v9

    move/from16 v16, v7

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    const/4 v15, 0x1

    :goto_3
    move v12, v15

    .line 3868
    move v15, v6

    if-eqz v15, :cond_1c

    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v15}, Landroid/support/v7/widget/RecyclerView;->access$1100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v15

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v15

    if-eqz v15, :cond_1c

    move v15, v8

    move/from16 v16, v6

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    const/4 v15, 0x1

    :goto_4
    move v13, v15

    .line 3870
    move v15, v6

    if-nez v15, :cond_f

    move v15, v7

    if-eqz v15, :cond_10

    :cond_f
    move v15, v13

    if-nez v15, :cond_10

    move v15, v12

    if-eqz v15, :cond_1d

    :cond_10
    const/4 v15, 0x1

    :goto_5
    move v14, v15

    .line 3873
    move-object v15, v2

    invoke-virtual {v15}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v15

    if-nez v15, :cond_11

    move v15, v14

    if-nez v15, :cond_1e

    .line 3874
    :cond_11
    move-object v15, v1

    iget-object v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3880
    :cond_12
    :goto_6
    move-object v15, v3

    if-eqz v15, :cond_14

    .line 3881
    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->isPendingInitialRun()Z

    move-result v15

    if-eqz v15, :cond_13

    .line 3882
    move-object v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3300(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    .line 3884
    :cond_13
    move-object v15, v1

    iget-boolean v15, v15, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mReSchedulePostAnimationCallback:Z

    if-nez v15, :cond_14

    .line 3885
    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 3888
    :cond_14
    move-object v15, v1

    invoke-direct {v15}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->enableRunOnAnimationRequests()V

    .line 3889
    return-void

    .line 3821
    :cond_15
    move-object v15, v3

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v15

    move/from16 v16, v12

    move/from16 v0, v16

    if-lt v15, v0, :cond_16

    .line 3822
    move-object v15, v3

    move/from16 v16, v12

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    invoke-virtual/range {v15 .. v16}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 3823
    move-object v15, v3

    move/from16 v16, v6

    move/from16 v17, v10

    sub-int v16, v16, v17

    move/from16 v17, v7

    move/from16 v18, v11

    sub-int v17, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3300(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_0

    .line 3825
    :cond_16
    move-object v15, v3

    move/from16 v16, v6

    move/from16 v17, v10

    sub-int v16, v16, v17

    move/from16 v17, v7

    move/from16 v18, v11

    sub-int v17, v17, v18

    invoke-static/range {v15 .. v17}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->access$3300(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V

    goto/16 :goto_0

    .line 3841
    :cond_17
    move v15, v10

    if-lez v15, :cond_18

    move v15, v12

    goto/16 :goto_1

    :cond_18
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 3846
    :cond_19
    move v15, v11

    if-lez v15, :cond_1a

    move v15, v12

    goto/16 :goto_2

    :cond_1a
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 3866
    :cond_1b
    const/4 v15, 0x0

    goto/16 :goto_3

    .line 3868
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 3870
    :cond_1d
    const/4 v15, 0x0

    goto/16 :goto_5

    .line 3876
    :cond_1e
    move-object v15, v1

    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_6
.end method

.method public smoothScrollBy(II)V
    .locals 8

    .prologue
    .line 3921
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIII)V

    .line 3922
    return-void
.end method

.method public smoothScrollBy(III)V
    .locals 9

    .prologue
    .line 3957
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$2800()Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 3958
    return-void
.end method

.method public smoothScrollBy(IIII)V
    .locals 13

    .prologue
    .line 3925
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v0

    move v6, v1

    move v7, v2

    move-object v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->computeScrollDuration(IIII)I

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    .line 3926
    return-void
.end method

.method public smoothScrollBy(IIILandroid/view/animation/Interpolator;)V
    .locals 13

    .prologue
    .line 3961
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    move-object v6, v4

    if-eq v5, v6, :cond_0

    .line 3962
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 3963
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    invoke-static {v6, v7}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 3965
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/support/v7/widget/RecyclerView;->access$3700(Landroid/support/v7/widget/RecyclerView;I)V

    .line 3966
    move-object v5, v0

    move-object v6, v0

    const/4 v7, 0x0

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingY:I

    iput v6, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mLastFlingX:I

    .line 3967
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 3968
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 3969
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 3972
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 3973
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 3974
    return-void
.end method
