.class Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v4/animation/AnimatorListenerCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecoverAnimation"
.end annotation


# instance fields
.field final mActionState:I

.field private final mAnimationType:I

.field private mEnded:Z

.field private mFraction:F

.field public mIsPendingCleanup:Z

.field mOverridden:Z

.field final mStartDx:F

.field final mStartDy:F

.field final mTargetX:F

.field final mTargetY:F

.field private final mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

.field final mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mX:F

.field mY:F

.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 15

    .prologue
    .line 2253
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 2246
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 2248
    move-object v9, v0

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2254
    move-object v9, v0

    move v10, v4

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    .line 2255
    move-object v9, v0

    move v10, v3

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    .line 2256
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 2257
    move-object v9, v0

    move v10, v5

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    .line 2258
    move-object v9, v0

    move v10, v6

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    .line 2259
    move-object v9, v0

    move v10, v7

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    .line 2260
    move-object v9, v0

    move v10, v8

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    .line 2261
    move-object v9, v0

    invoke-static {}, Landroid/support/v4/animation/AnimatorCompatHelper;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    .line 2262
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    new-instance v10, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v11, v12, v13}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation$1;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    invoke-interface {v9, v10}, Landroid/support/v4/animation/ValueAnimatorCompat;->addUpdateListener(Landroid/support/v4/animation/AnimatorUpdateListenerCompat;)V

    .line 2269
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    move-object v10, v2

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v9, v10}, Landroid/support/v4/animation/ValueAnimatorCompat;->setTarget(Landroid/view/View;)V

    .line 2270
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    move-object v10, v0

    invoke-interface {v9, v10}, Landroid/support/v4/animation/ValueAnimatorCompat;->addListener(Landroid/support/v4/animation/AnimatorListenerCompat;)V

    .line 2271
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2272
    return-void
.end method

.method static synthetic access$1900(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)Z
    .locals 2

    .prologue
    .line 2220
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$2000(Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;)I
    .locals 2

    .prologue
    .line 2220
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mAnimationType:I

    move v0, v1

    return v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 2284
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->cancel()V

    .line 2285
    return-void
.end method

.method public onAnimationCancel(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 2323
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->setFraction(F)V

    .line 2324
    return-void
.end method

.method public onAnimationEnd(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 4

    .prologue
    .line 2315
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_0

    .line 2316
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2318
    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    .line 2319
    return-void
.end method

.method public onAnimationRepeat(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0

    .prologue
    .line 2329
    return-void
.end method

.method public onAnimationStart(Landroid/support/v4/animation/ValueAnimatorCompat;)V
    .locals 0

    .prologue
    .line 2311
    return-void
.end method

.method public setDuration(J)V
    .locals 6

    .prologue
    .line 2275
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    move-wide v4, v1

    invoke-interface {v3, v4, v5}, Landroid/support/v4/animation/ValueAnimatorCompat;->setDuration(J)V

    .line 2276
    return-void
.end method

.method public setFraction(F)V
    .locals 4

    .prologue
    .line 2288
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    .line 2289
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 2279
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2280
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mValueAnimator:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v1}, Landroid/support/v4/animation/ValueAnimatorCompat;->start()V

    .line 2281
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 2296
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2297
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    .line 2301
    :goto_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 2302
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    .line 2306
    :goto_1
    return-void

    .line 2299
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetX:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDx:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    goto :goto_0

    .line 2304
    :cond_1
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mFraction:F

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mTargetY:F

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mStartDy:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    goto :goto_1
.end method
