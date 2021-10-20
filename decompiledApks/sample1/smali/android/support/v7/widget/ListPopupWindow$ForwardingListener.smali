.class public abstract Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ForwardingListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;,
        Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field private final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;

.field private mWasLongPress:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 1281
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 1279
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    .line 1282
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    .line 1283
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    .line 1284
    move-object v2, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    .line 1286
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    .line 1287
    return-void
.end method

.method static synthetic access$1000(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)V
    .locals 2

    .prologue
    .line 1248
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onLongPress()V

    return-void
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;)Landroid/view/View;
    .locals 2

    .prologue
    .line 1248
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method private clearCallbacks()V
    .locals 3

    .prologue
    .line 1411
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 1412
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1415
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 1416
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    .line 1418
    :cond_1
    return-void
.end method

.method private onLongPress()V
    .locals 13

    .prologue
    .line 1421
    move-object v0, p0

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1423
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v1, v5

    .line 1424
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->isLongClickable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1431
    goto :goto_0

    .line 1435
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1438
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v2, v5

    .line 1439
    move-wide v5, v2

    move-wide v7, v2

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    move-object v4, v5

    .line 1440
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1441
    move-object v5, v4

    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 1443
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1444
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1445
    goto :goto_0
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 12

    .prologue
    .line 1454
    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v9

    .line 1455
    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v9

    move-object v3, v9

    .line 1456
    move-object v9, v3

    if-eqz v9, :cond_0

    move-object v9, v3

    invoke-virtual {v9}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1457
    :cond_0
    const/4 v9, 0x0

    move v0, v9

    .line 1479
    :goto_0
    return v0

    .line 1460
    :cond_1
    move-object v9, v3

    invoke-static {v9}, Landroid/support/v7/widget/ListPopupWindow;->access$600(Landroid/support/v7/widget/ListPopupWindow;)Landroid/support/v7/widget/ListPopupWindow$DropDownListView;

    move-result-object v9

    move-object v4, v9

    .line 1461
    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    invoke-virtual {v9}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->isShown()Z

    move-result v9

    if-nez v9, :cond_3

    .line 1462
    :cond_2
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    .line 1466
    :cond_3
    move-object v9, v1

    invoke-static {v9}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    move-object v5, v9

    .line 1467
    move-object v9, v0

    move-object v10, v2

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1468
    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v9

    .line 1471
    move-object v9, v4

    move-object v10, v5

    move-object v11, v0

    iget v11, v11, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v9

    move v6, v9

    .line 1472
    move-object v9, v5

    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 1475
    move-object v9, v1

    invoke-static {v9}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v9

    move v7, v9

    .line 1476
    move v9, v7

    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    move v9, v7

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    const/4 v9, 0x1

    :goto_1
    move v8, v9

    .line 1479
    move v9, v6

    if-eqz v9, :cond_5

    move v9, v8

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    :goto_2
    move v0, v9

    goto :goto_0

    .line 1476
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 1479
    :cond_5
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 13

    .prologue
    .line 1367
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v2, v7

    .line 1368
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1369
    const/4 v7, 0x0

    move v0, v7

    .line 1407
    :goto_0
    return v0

    .line 1372
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v7

    move v3, v7

    .line 1373
    move v7, v3

    packed-switch v7, :pswitch_data_0

    .line 1407
    :cond_1
    :goto_1
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 1375
    :pswitch_0
    move-object v7, v0

    move-object v8, v1

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    .line 1376
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    .line 1378
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v7, :cond_2

    .line 1379
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$DisallowIntercept;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    .line 1381
    :cond_2
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mDisallowIntercept:Ljava/lang/Runnable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTapTimeout:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 1382
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v7, :cond_3

    .line 1383
    move-object v7, v0

    new-instance v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;Landroid/support/v7/widget/ListPopupWindow$1;)V

    iput-object v8, v7, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    .line 1385
    :cond_3
    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTriggerLongPress:Ljava/lang/Runnable;

    move-object v9, v0

    iget v9, v9, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mLongPressTimeout:I

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    .line 1386
    goto :goto_1

    .line 1388
    :pswitch_1
    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mActivePointerId:I

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    move v4, v7

    .line 1389
    move v7, v4

    if-ltz v7, :cond_1

    .line 1390
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    move v5, v7

    .line 1391
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move v6, v7

    .line 1392
    move-object v7, v2

    move v8, v5

    move v9, v6

    move-object v10, v0

    iget v10, v10, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mScaledTouchSlop:F

    invoke-static {v7, v8, v9, v10}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1393
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    .line 1396
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1397
    const/4 v7, 0x1

    move v0, v7

    goto/16 :goto_0

    .line 1399
    :cond_4
    goto/16 :goto_1

    .line 1403
    :pswitch_2
    move-object v7, v0

    invoke-direct {v7}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->clearCallbacks()V

    goto/16 :goto_1

    .line 1373
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 7

    .prologue
    .line 1483
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v1

    move v5, v3

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v2

    move v5, v3

    neg-float v5, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    move v6, v3

    add-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 1504
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    move-object v3, v4

    .line 1505
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1506
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1507
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .prologue
    .line 1493
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mTmpLocation:[I

    move-object v3, v4

    .line 1494
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1495
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x0

    aget v5, v5, v6

    neg-int v5, v5

    int-to-float v5, v5

    move-object v6, v3

    const/4 v7, 0x1

    aget v6, v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1496
    const/4 v4, 0x1

    move v0, v4

    return v0
.end method


# virtual methods
.method public abstract getPopup()Landroid/support/v7/widget/ListPopupWindow;
.end method

.method protected onForwardingStarted()Z
    .locals 3

    .prologue
    .line 1339
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    move-object v1, v2

    .line 1340
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1341
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->show()V

    .line 1343
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method protected onForwardingStopped()Z
    .locals 3

    .prologue
    .line 1353
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->getPopup()Landroid/support/v7/widget/ListPopupWindow;

    move-result-object v2

    move-object v1, v2

    .line 1354
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1355
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V

    .line 1357
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    .prologue
    .line 1303
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    move v3, v8

    .line 1305
    move v8, v3

    if-eqz v8, :cond_5

    .line 1306
    move-object v8, v0

    iget-boolean v8, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mWasLongPress:Z

    if-eqz v8, :cond_2

    .line 1310
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v8

    move v4, v8

    .line 1327
    :cond_0
    :goto_0
    move-object v8, v0

    move v9, v4

    iput-boolean v9, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mForwarding:Z

    .line 1328
    move v8, v4

    if-nez v8, :cond_1

    move v8, v3

    if-eqz v8, :cond_7

    :cond_1
    const/4 v8, 0x1

    :goto_1
    move v0, v8

    return v0

    .line 1312
    :cond_2
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStopped()Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    const/4 v8, 0x1

    :goto_2
    move v4, v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 1315
    :cond_5
    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->onForwardingStarted()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    move v4, v8

    .line 1317
    move v8, v4

    if-eqz v8, :cond_0

    .line 1319
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    move-wide v5, v8

    .line 1320
    move-wide v8, v5

    move-wide v10, v5

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    move-object v7, v8

    .line 1322
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/ListPopupWindow$ForwardingListener;->mSrc:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 1323
    move-object v8, v7

    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_0

    .line 1315
    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 1328
    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method
