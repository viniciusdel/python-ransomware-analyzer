.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$1;,
        Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String;

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000


# instance fields
.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 67
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 68
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 69
    move-object v3, v0

    new-instance v4, Landroid/graphics/Rect;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 70
    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 82
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 85
    move-object v3, v0

    const/high16 v4, -0x80000000

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 93
    move-object v3, v1

    if-nez v3, :cond_0

    .line 94
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "View may not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 97
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    .line 98
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v2, v3

    .line 99
    move-object v3, v0

    move-object v4, v2

    const-string v5, "accessibility"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iput-object v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 100
    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$200(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 56
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method private clearAccessibilityFocus(I)Z
    .locals 5

    .prologue
    .line 577
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    move-object v2, v0

    const/high16 v3, -0x80000000

    iput v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 579
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 580
    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 582
    const/4 v2, 0x1

    move v0, v2

    .line 584
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 6

    .prologue
    .line 258
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 262
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    .line 260
    :pswitch_0
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 258
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .locals 9

    .prologue
    .line 290
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v2

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v3, v5

    .line 291
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 292
    move-object v5, v3

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 295
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 298
    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_0

    .line 299
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 304
    :cond_0
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 306
    move-object v5, v3

    invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v5

    move-object v4, v5

    .line 307
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move v7, v1

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 309
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .locals 5

    .prologue
    .line 274
    move-object v0, p0

    move v1, p1

    move v3, v1

    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    move-object v2, v3

    .line 275
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 276
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method private createNode(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 4

    .prologue
    .line 323
    move-object v0, p0

    move v1, p1

    move v2, v1

    packed-switch v2, :pswitch_data_0

    .line 327
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    .line 325
    :pswitch_0
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 10

    .prologue
    .line 384
    move-object v0, p0

    move v1, p1

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v6

    move-object v2, v6

    .line 387
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 388
    move-object v6, v2

    sget-object v7, Landroid/support/v4/widget/ExploreByTouchHelper;->DEFAULT_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 391
    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 394
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    if-nez v6, :cond_0

    .line 395
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 399
    :cond_0
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 400
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 401
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 405
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v6

    move v3, v6

    .line 406
    move v6, v3

    const/16 v7, 0x40

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_2

    .line 407
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 410
    :cond_2
    move v6, v3

    const/16 v7, 0x80

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_3

    .line 411
    new-instance v6, Ljava/lang/RuntimeException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 416
    :cond_3
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 417
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move v8, v1

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 418
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 421
    move-object v6, v0

    iget v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    move v7, v1

    if-ne v6, v7, :cond_5

    .line 422
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 423
    move-object v6, v2

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 430
    :goto_0
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 431
    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 432
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 436
    :cond_4
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 437
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move v4, v6

    .line 438
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    move v5, v6

    .line 439
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 440
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    move v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 441
    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 443
    move-object v6, v2

    move-object v0, v6

    return-object v0

    .line 425
    :cond_5
    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 426
    move-object v6, v2

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_0
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 9

    .prologue
    .line 338
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v5

    move-object v1, v5

    .line 339
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move-object v6, v1

    invoke-static {v5, v6}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 342
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 345
    new-instance v5, Ljava/util/LinkedList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v5

    .line 346
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 348
    move-object v5, v2

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 349
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 350
    goto :goto_0

    .line 352
    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .locals 6

    .prologue
    .line 490
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 491
    :cond_0
    const/4 v4, 0x0

    move v0, v4

    .line 520
    :goto_0
    return v0

    .line 495
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWindowVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 500
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 501
    :goto_1
    move-object v4, v2

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_5

    .line 502
    move-object v4, v2

    check-cast v4, Landroid/view/View;

    move-object v3, v4

    .line 503
    move-object v4, v3

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-lez v4, :cond_3

    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    .line 504
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 506
    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    move-object v2, v4

    .line 507
    goto :goto_1

    .line 510
    :cond_5
    move-object v4, v2

    if-nez v4, :cond_6

    .line 511
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 515
    :cond_6
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 516
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 520
    :cond_7
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method private isAccessibilityFocused(I)Z
    .locals 4

    .prologue
    .line 529
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    move v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private manageFocusForChild(IILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 470
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 476
    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    .line 472
    :sswitch_0
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 474
    :sswitch_1
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 470
    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
    .end sparse-switch
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 447
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 451
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    .line 449
    :pswitch_0
    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .locals 8

    .prologue
    .line 460
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, v2

    sparse-switch v4, :sswitch_data_0

    .line 465
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    .line 463
    :sswitch_0
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->manageFocusForChild(IILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    .line 460
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .locals 6

    .prologue
    .line 456
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .locals 5

    .prologue
    .line 545
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    .line 566
    :goto_0
    return v0

    .line 550
    :cond_1
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->isAccessibilityFocused(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 552
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_2

    .line 553
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 558
    :cond_2
    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    .line 561
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 562
    move-object v2, v0

    move v3, v1

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 564
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 566
    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method private updateHoveredVirtualView(I)V
    .locals 6

    .prologue
    .line 233
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 245
    :goto_0
    return-void

    .line 237
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    move v2, v3

    .line 238
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 242
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v3

    .line 243
    move-object v3, v0

    move v4, v2

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v3

    .line 245
    goto :goto_0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 136
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    .line 154
    :goto_0
    return v0

    .line 141
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 154
    :pswitch_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 144
    :pswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v3

    move v2, v3

    .line 145
    move-object v3, v0

    move v4, v2

    invoke-direct {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 146
    move v3, v2

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 148
    :pswitch_2
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_3

    .line 149
    move-object v3, v0

    const/high16 v4, -0x80000000

    invoke-direct {v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 150
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 152
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 141
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .locals 8

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    if-nez v2, :cond_0

    .line 111
    move-object v2, v0

    new-instance v3, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$1;)V

    iput-object v3, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    .line 113
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$ExploreByTouchNodeProvider;

    move-object v0, v2

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .locals 2

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/widget/ExploreByTouchHelper;->mFocusedVirtualViewId:I

    move v0, v1

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public invalidateRoot()V
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 198
    return-void
.end method

.method public invalidateVirtualView(I)V
    .locals 5

    .prologue
    .line 210
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/16 v4, 0x800

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    move-result v2

    .line 212
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected abstract onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.end method

.method public onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 0

    .prologue
    .line 708
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method public sendEventForVirtualView(II)Z
    .locals 8

    .prologue
    .line 176
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v1

    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 177
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 186
    :goto_0
    return v0

    .line 180
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    move-object v3, v5

    .line 181
    move-object v5, v3

    if-nez v5, :cond_2

    .line 182
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 185
    :cond_2
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v5

    move-object v4, v5

    .line 186
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/ExploreByTouchHelper;->mView:Landroid/view/View;

    move-object v7, v4

    invoke-static {v5, v6, v7}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method
