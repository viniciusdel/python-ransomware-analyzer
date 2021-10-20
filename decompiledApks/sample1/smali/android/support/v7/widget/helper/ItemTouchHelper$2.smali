.class Landroid/support/v7/widget/helper/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/helper/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper;)V
    .locals 4

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 10

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 294
    move-object v5, v2

    invoke-static {v5}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v5

    move v3, v5

    .line 295
    move v5, v3

    if-nez v5, :cond_3

    .line 296
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v2

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 297
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 298
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v2

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 299
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$500(Landroid/support/v7/widget/helper/ItemTouchHelper;)V

    .line 300
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-nez v5, :cond_1

    .line 301
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v2

    invoke-static {v5, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$600(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;

    move-result-object v5

    move-object v4, v5

    .line 302
    move-object v5, v4

    if-eqz v5, :cond_1

    .line 303
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchX:F

    .line 304
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mInitialTouchY:F

    .line 305
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$700(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)I

    move-result v5

    .line 306
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 307
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v6

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;->clearView(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 309
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v4

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 310
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v7, v7, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 327
    :cond_1
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 328
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v5}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 330
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    return v0

    .line 313
    :cond_3
    move v5, v3

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 314
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v6, -0x1

    iput v6, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 315
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    goto :goto_0

    .line 316
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 319
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v6, v6, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v5, v6}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v5

    move v4, v5

    .line 323
    move v5, v4

    if-ltz v5, :cond_1

    .line 324
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move v6, v3

    move-object v7, v2

    move v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    move-result v5

    goto :goto_0

    .line 330
    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 5

    .prologue
    .line 399
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    .line 403
    :goto_0
    return-void

    .line 402
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 403
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 13

    .prologue
    .line 335
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$400(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    .line 340
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 341
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 343
    :cond_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 395
    :goto_0
    return-void

    .line 346
    :cond_1
    move-object v9, v2

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    move v3, v9

    .line 347
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v9

    move v4, v9

    .line 349
    move v9, v4

    if-ltz v9, :cond_2

    .line 350
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move v10, v3

    move-object v11, v2

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1000(Landroid/support/v7/widget/helper/ItemTouchHelper;ILandroid/view/MotionEvent;I)Z

    move-result v9

    .line 352
    :cond_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelected:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v9

    .line 353
    move-object v9, v5

    if-nez v9, :cond_3

    .line 354
    goto :goto_0

    .line 356
    :cond_3
    move v9, v3

    packed-switch v9, :pswitch_data_0

    .line 395
    :cond_4
    :goto_1
    :pswitch_0
    goto :goto_0

    .line 359
    :pswitch_1
    move v9, v4

    if-ltz v9, :cond_4

    .line 360
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    move v12, v4

    invoke-static {v9, v10, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 361
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v10, v5

    invoke-static {v9, v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$100(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 362
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v10}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v9

    .line 363
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$200(Landroid/support/v7/widget/helper/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 364
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 370
    :pswitch_2
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 371
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v9

    const/16 v10, 0x3e8

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 374
    :cond_5
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$800(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 375
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    const/4 v10, -0x1

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 376
    goto :goto_1

    .line 378
    :pswitch_3
    move-object v9, v2

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v9

    move v6, v9

    .line 379
    move-object v9, v2

    move v10, v6

    invoke-static {v9, v10}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v9

    move v7, v9

    .line 380
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v10, v10, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    if-ne v9, v10, :cond_4

    .line 381
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 382
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v9}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$1100(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object v9

    const/16 v10, 0x3e8

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-static {v11}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$300(Landroid/support/v7/widget/helper/ItemTouchHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView;->getMaxFlingVelocity()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 388
    :cond_6
    move v9, v6

    if-nez v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    move v8, v9

    .line 389
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v10, v2

    move v11, v8

    invoke-static {v10, v11}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v10

    iput v10, v9, Landroid/support/v7/widget/helper/ItemTouchHelper;->mActivePointerId:I

    .line 390
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper$2;->this$0:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget v11, v11, Landroid/support/v7/widget/helper/ItemTouchHelper;->mSelectedFlags:I

    move v12, v6

    invoke-static {v9, v10, v11, v12}, Landroid/support/v7/widget/helper/ItemTouchHelper;->access$900(Landroid/support/v7/widget/helper/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 391
    goto/16 :goto_1

    .line 388
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 356
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
