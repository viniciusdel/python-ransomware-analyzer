.class public final Landroid/support/v7/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    .line 4184
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 4185
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4186
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4188
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 4190
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 4193
    move-object v2, v0

    const/4 v3, 0x2

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$2700(Landroid/support/v7/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 2

    .prologue
    .line 4184
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v0, v1

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 4512
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4513
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_0

    .line 4515
    move-object v2, v1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4518
    :cond_0
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4519
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$4600(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 4523
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 5

    .prologue
    .line 4526
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4527
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4529
    :cond_0
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 8

    .prologue
    .line 4532
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_1

    .line 4533
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 4534
    move-object v5, v4

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 4535
    move-object v5, v0

    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4532
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 4538
    :cond_1
    move v5, v2

    if-nez v5, :cond_2

    .line 4550
    :goto_1
    return-void

    .line 4542
    :cond_2
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 4543
    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4544
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4550
    :goto_2
    goto :goto_1

    .line 4546
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    move v3, v5

    .line 4547
    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4548
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 4681
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 4682
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4683
    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4684
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4685
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 12

    .prologue
    .line 4283
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v1

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v7

    move-object v3, v7

    .line 4284
    move-object v7, v3

    if-nez v7, :cond_0

    .line 4285
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4289
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v7

    move v4, v7

    .line 4290
    move v7, v4

    if-ltz v7, :cond_1

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 4291
    :cond_1
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistency detected. Invalid item position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(offset:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "state:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4295
    :cond_2
    move-object v7, v3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4296
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    move-object v8, v3

    move v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 4297
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4298
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4299
    move-object v7, v3

    move v8, v2

    iput v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4302
    :cond_3
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    move-object v5, v7

    .line 4304
    move-object v7, v5

    if-nez v7, :cond_4

    .line 4305
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v7

    .line 4306
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4314
    :goto_0
    move-object v7, v6

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4315
    move-object v7, v6

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4316
    move-object v7, v6

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4317
    return-void

    .line 4307
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 4308
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v8, v5

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v7

    .line 4309
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4311
    :cond_5
    move-object v7, v5

    check-cast v7, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v6, v7

    goto :goto_0

    .line 4316
    :cond_6
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 4206
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4207
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 4208
    return-void
.end method

.method clearOldPositions()V
    .locals 7

    .prologue
    .line 5069
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 5070
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_0

    .line 5071
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 5072
    move-object v5, v3

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5070
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5074
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    .line 5075
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 5076
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5075
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5078
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 5079
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v3, v5

    .line 5080
    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_2

    .line 5081
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5080
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 5084
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 2

    .prologue
    .line 4755
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4756
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4757
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4759
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 7

    .prologue
    .line 4338
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 4339
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "item count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4342
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 4343
    move v2, v1

    move v0, v2

    .line 4345
    :goto_0
    return v0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method dispatchViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 4913
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$5100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4914
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$5100(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecyclerListener;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4916
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4917
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4919
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    if-eqz v2, :cond_2

    .line 4920
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4923
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 4764
    move-object v0, p0

    move v1, p1

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v12, v8

    move v8, v12

    move v9, v12

    move v2, v9

    if-nez v8, :cond_1

    .line 4765
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 4789
    :goto_0
    return-object v0

    .line 4768
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    :goto_1
    move v8, v3

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 4769
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v4, v8

    .line 4770
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_2

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_2

    .line 4771
    move-object v8, v4

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4772
    move-object v8, v4

    move-object v0, v8

    goto :goto_0

    .line 4768
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4776
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4777
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v3, v8

    .line 4778
    move v8, v3

    if-lez v8, :cond_5

    move v8, v3

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 4779
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move v9, v3

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v8

    move-wide v4, v8

    .line 4780
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v2

    if-ge v8, v9, :cond_5

    .line 4781
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 4782
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    move-wide v10, v4

    cmp-long v8, v8, v10

    if-nez v8, :cond_4

    .line 4783
    move-object v8, v7

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4784
    move-object v8, v7

    move-object v0, v8

    goto/16 :goto_0

    .line 4780
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4789
    :cond_5
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_0
.end method

.method getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;
    .locals 5

    .prologue
    .line 5017
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-nez v1, :cond_0

    .line 5018
    move-object v1, v0

    new-instance v2, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 5020
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-object v0, v1

    return-object v0
.end method

.method getScrapCount()I
    .locals 2

    .prologue
    .line 4747
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4229
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 4

    .prologue
    .line 4751
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v2

    return-object v0
.end method

.method getScrapViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 4862
    move-object v0, p0

    move-wide v1, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v9

    .line 4863
    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_0
    move v9, v6

    if-ltz v9, :cond_3

    .line 4864
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v9

    .line 4865
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v9

    move-wide v11, v1

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v9

    if-nez v9, :cond_2

    .line 4866
    move v9, v3

    move-object v10, v7

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-ne v9, v10, :cond_1

    .line 4867
    move-object v9, v7

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4868
    move-object v9, v7

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 4877
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v9

    if-nez v9, :cond_0

    .line 4878
    move-object v9, v7

    const/4 v10, 0x2

    const/16 v11, 0xe

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4882
    :cond_0
    move-object v9, v7

    move-object v0, v9

    .line 4909
    :goto_1
    return-object v0

    .line 4883
    :cond_1
    move v9, v4

    if-nez v9, :cond_2

    .line 4887
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 4888
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v10, v7

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4889
    move-object v9, v0

    move-object v10, v7

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 4863
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 4895
    :cond_3
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 4896
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    :goto_2
    move v9, v7

    if-ltz v9, :cond_7

    .line 4897
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v9

    .line 4898
    move-object v9, v8

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v9

    move-wide v11, v1

    cmp-long v9, v9, v11

    if-nez v9, :cond_6

    .line 4899
    move v9, v3

    move-object v10, v8

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 4900
    move v9, v4

    if-nez v9, :cond_4

    .line 4901
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v9

    .line 4903
    :cond_4
    move-object v9, v8

    move-object v0, v9

    goto :goto_1

    .line 4904
    :cond_5
    move v9, v4

    if-nez v9, :cond_6

    .line 4905
    move-object v9, v0

    move v10, v7

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4896
    :cond_6
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 4909
    :cond_7
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 13

    .prologue
    .line 4802
    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 4805
    const/4 v8, 0x0

    move v5, v8

    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_1

    .line 4806
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v8

    .line 4807
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2200(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_3

    .line 4809
    :cond_0
    move v8, v2

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v8

    move v9, v2

    if-eq v8, v9, :cond_2

    .line 4810
    const-string v8, "RecyclerView"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scrap view for position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isn\'t dirty but has"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " wrong view type! (found "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " but expected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 4820
    :cond_1
    move v8, v3

    if-nez v8, :cond_5

    .line 4821
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v1

    move v10, v2

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v8

    move-object v5, v8

    .line 4822
    move-object v8, v5

    if-eqz v8, :cond_5

    .line 4825
    move-object v8, v5

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v6, v8

    .line 4826
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 4827
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v8

    move v7, v8

    .line 4828
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 4829
    new-instance v8, Ljava/lang/IllegalStateException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4815
    :cond_2
    move-object v8, v6

    const/16 v9, 0x20

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4816
    move-object v8, v6

    move-object v0, v8

    .line 4857
    :goto_1
    return-object v0

    .line 4805
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 4832
    :cond_4
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mChildHelper:Landroid/support/v7/widget/ChildHelper;

    move v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/ChildHelper;->detachViewFromParent(I)V

    .line 4833
    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 4834
    move-object v8, v6

    const/16 v9, 0x2020

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4836
    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    .line 4841
    :cond_5
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 4842
    const/4 v8, 0x0

    move v6, v8

    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_8

    .line 4843
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 4846
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_7

    .line 4847
    move v8, v3

    if-nez v8, :cond_6

    .line 4848
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    .line 4854
    :cond_6
    move-object v8, v7

    move-object v0, v8

    goto :goto_1

    .line 4842
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4857
    :cond_8
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 5

    .prologue
    .line 4363
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 14

    .prologue
    .line 4367
    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move v8, v1

    if-ltz v8, :cond_0

    move v8, v1

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_1

    .line 4368
    :cond_0
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid item position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "). Item count:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4371
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    .line 4372
    const/4 v8, 0x0

    move-object v4, v8

    .line 4374
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 4375
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4376
    move-object v8, v4

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    :goto_0
    move v3, v8

    .line 4379
    :cond_2
    move-object v8, v4

    if-nez v8, :cond_5

    .line 4380
    move-object v8, v0

    move v9, v1

    const/4 v10, -0x1

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4381
    move-object v8, v4

    if-eqz v8, :cond_5

    .line 4382
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 4384
    move v8, v2

    if-nez v8, :cond_4

    .line 4387
    move-object v8, v4

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4388
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4389
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v4

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4390
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4394
    :cond_3
    :goto_1
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4396
    :cond_4
    const/4 v8, 0x0

    move-object v4, v8

    .line 4402
    :cond_5
    :goto_2
    move-object v8, v4

    if-nez v8, :cond_f

    .line 4403
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v5, v8

    .line 4404
    move v8, v5

    if-ltz v8, :cond_6

    move v8, v5

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v9

    if-lt v8, v9, :cond_a

    .line 4405
    :cond_6
    new-instance v8, Ljava/lang/IndexOutOfBoundsException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Inconsistency detected. Invalid item position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(offset:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v11, v11, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4376
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 4391
    :cond_8
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4392
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_1

    .line 4398
    :cond_9
    const/4 v8, 0x1

    move v3, v8

    goto :goto_2

    .line 4410
    :cond_a
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    move v6, v8

    .line 4412
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4413
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v9

    move v10, v5

    invoke-virtual {v9, v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v9

    move v11, v6

    move v12, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapViewForId(JIZ)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4414
    move-object v8, v4

    if-eqz v8, :cond_b

    .line 4416
    move-object v8, v4

    move v9, v5

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 4417
    const/4 v8, 0x1

    move v3, v8

    .line 4420
    :cond_b
    move-object v8, v4

    if-nez v8, :cond_d

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    if-eqz v8, :cond_d

    .line 4423
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    move-object v9, v0

    move v10, v1

    move v11, v6

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Landroid/support/v7/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v8

    move-object v7, v8

    .line 4425
    move-object v8, v7

    if-eqz v8, :cond_d

    .line 4426
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4427
    move-object v8, v4

    if-nez v8, :cond_c

    .line 4428
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4430
    :cond_c
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4431
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string v10, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4437
    :cond_d
    move-object v8, v4

    if-nez v8, :cond_e

    .line 4444
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4445
    move-object v8, v4

    if-eqz v8, :cond_e

    .line 4446
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 4447
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->access$4400()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 4448
    move-object v8, v0

    move-object v9, v4

    invoke-direct {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4452
    :cond_e
    move-object v8, v4

    if-nez v8, :cond_f

    .line 4453
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v8

    move-object v4, v8

    .line 4463
    :cond_f
    move v8, v3

    if-eqz v8, :cond_10

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-nez v8, :cond_10

    move-object v8, v4

    const/16 v9, 0x2000

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 4465
    move-object v8, v4

    const/4 v9, 0x0

    const/16 v10, 0x2000

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4466
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$State;->access$2300(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 4467
    move-object v8, v4

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v8

    move v5, v8

    .line 4469
    move v8, v5

    const/16 v9, 0x1000

    or-int/lit16 v8, v8, 0x1000

    move v5, v8

    .line 4470
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    move-object v10, v4

    move v11, v5

    move-object v12, v4

    invoke-virtual {v12}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v8

    move-object v6, v8

    .line 4472
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v4

    move-object v10, v6

    invoke-static {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView;->access$4500(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4476
    :cond_10
    const/4 v8, 0x0

    move v5, v8

    .line 4477
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_12

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 4479
    move-object v8, v4

    move v9, v1

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4495
    :cond_11
    :goto_3
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    move-object v6, v8

    .line 4497
    move-object v8, v6

    if-nez v8, :cond_14

    .line 4498
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .line 4499
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4506
    :goto_4
    move-object v8, v7

    move-object v9, v4

    iput-object v9, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 4507
    move-object v8, v7

    move v9, v3

    if-eqz v9, :cond_16

    move v9, v5

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4508
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v0, v8

    return-object v0

    .line 4480
    :cond_12
    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v8

    if-eqz v8, :cond_13

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v8

    if-nez v8, :cond_13

    move-object v8, v4

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4485
    :cond_13
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mAdapterHelper:Landroid/support/v7/widget/AdapterHelper;

    move v9, v1

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v8

    move v6, v8

    .line 4486
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iput-object v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4487
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v8}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v8

    move-object v9, v4

    move v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$Adapter;->bindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 4488
    move-object v8, v0

    move-object v9, v4

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4489
    const/4 v8, 0x1

    move v5, v8

    .line 4490
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4491
    move-object v8, v4

    move v9, v1

    iput v9, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    .line 4500
    :cond_14
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v8

    if-nez v8, :cond_15

    .line 4501
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    .line 4502
    move-object v8, v4

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 4504
    :cond_15
    move-object v8, v6

    check-cast v8, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v7, v8

    goto :goto_4

    .line 4507
    :cond_16
    const/4 v9, 0x0

    goto :goto_5
.end method

.method markItemDecorInsetsDirty()V
    .locals 7

    .prologue
    .line 5087
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v5

    .line 5088
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 5089
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v5

    .line 5090
    move-object v5, v3

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-object v4, v5

    .line 5091
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 5092
    move-object v5, v4

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5088
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5095
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 6

    .prologue
    .line 5053
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5054
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 5055
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 5056
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v4

    .line 5057
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 5058
    move-object v4, v3

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5059
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5055
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5066
    :cond_1
    :goto_1
    return-void

    .line 5064
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    goto :goto_1
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 9

    .prologue
    .line 4961
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    .line 4962
    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 4963
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v5, v6

    .line 4964
    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v6

    move v7, v1

    if-lt v6, v7, :cond_0

    .line 4969
    move-object v6, v5

    move v7, v2

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4962
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4972
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 12

    .prologue
    .line 4933
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v9, v1

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 4934
    move v9, v1

    move v3, v9

    .line 4935
    move v9, v2

    move v4, v9

    .line 4936
    const/4 v9, -0x1

    move v5, v9

    .line 4942
    :goto_0
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v6, v9

    .line 4943
    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_4

    .line 4944
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v8, v9

    .line 4945
    move-object v9, v8

    if-eqz v9, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v3

    if-lt v9, v10, :cond_0

    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v4

    if-le v9, v10, :cond_2

    .line 4943
    :cond_0
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 4938
    :cond_1
    move v9, v2

    move v3, v9

    .line 4939
    move v9, v1

    move v4, v9

    .line 4940
    const/4 v9, 0x1

    move v5, v9

    goto :goto_0

    .line 4948
    :cond_2
    move-object v9, v8

    iget v9, v9, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v10, v1

    if-ne v9, v10, :cond_3

    .line 4949
    move-object v9, v8

    move v10, v2

    move v11, v1

    sub-int/2addr v10, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 4951
    :cond_3
    move-object v9, v8

    move v10, v5

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 4958
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 11

    .prologue
    .line 4981
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v4, v8

    .line 4982
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v5, v8

    .line 4983
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v6, v8

    :goto_0
    move v8, v6

    if-ltz v8, :cond_2

    .line 4984
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v7, v8

    .line 4985
    move-object v8, v7

    if-eqz v8, :cond_0

    .line 4986
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v4

    if-lt v8, v9, :cond_1

    .line 4992
    move-object v8, v7

    move v9, v2

    neg-int v9, v9

    move v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4983
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 4993
    :cond_1
    move-object v8, v7

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v9, v1

    if-lt v8, v9, :cond_0

    .line 4995
    move-object v8, v7

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4996
    move-object v8, v0

    move v9, v6

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5000
    :cond_2
    return-void
.end method

.method onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V
    .locals 8

    .prologue
    .line 4927
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 4928
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Landroid/support/v7/widget/RecyclerView$Adapter;Landroid/support/v7/widget/RecyclerView$Adapter;Z)V

    .line 4929
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 4693
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4694
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4802(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v3

    .line 4695
    move-object v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4902(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    move-result v3

    .line 4696
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4697
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4698
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 5

    .prologue
    .line 4587
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v3

    .line 4588
    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    .line 4589
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4588
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4591
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4592
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 5

    .prologue
    .line 4609
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v2, v3

    .line 4613
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4614
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .line 4615
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 4565
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4566
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4567
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4569
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4570
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4574
    :cond_1
    :goto_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4575
    return-void

    .line 4571
    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4572
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 12

    .prologue
    .line 4623
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v1

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4624
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isAttached:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 4630
    :cond_2
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4631
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4635
    :cond_3
    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4636
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 4640
    :cond_4
    move-object v7, v1

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4700(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    move v2, v7

    .line 4642
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    if-eqz v7, :cond_a

    move v7, v2

    if-eqz v7, :cond_a

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    :goto_1
    move v3, v7

    .line 4645
    const/4 v7, 0x0

    move v4, v7

    .line 4646
    const/4 v7, 0x0

    move v5, v7

    .line 4651
    move v7, v3

    if-nez v7, :cond_5

    move-object v7, v1

    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4652
    :cond_5
    move-object v7, v1

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v7

    if-nez v7, :cond_7

    .line 4655
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v6, v7

    .line 4656
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v7, v8, :cond_6

    move v7, v6

    if-lez v7, :cond_6

    .line 4657
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4659
    :cond_6
    move v7, v6

    move-object v8, v0

    iget v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v7, v8, :cond_7

    .line 4660
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 4661
    const/4 v7, 0x1

    move v4, v7

    .line 4664
    :cond_7
    move v7, v4

    if-nez v7, :cond_8

    .line 4665
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4666
    const/4 v7, 0x1

    move v5, v7

    .line 4674
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->mViewInfoStore:Landroid/support/v7/widget/ViewInfoStore;

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewInfoStore;->removeViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4675
    move v7, v4

    if-nez v7, :cond_9

    move v7, v5

    if-nez v7, :cond_9

    move v7, v2

    if-eqz v7, :cond_9

    .line 4676
    move-object v7, v1

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 4678
    :cond_9
    return-void

    .line 4642
    :cond_a
    const/4 v7, 0x0

    goto :goto_1
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 4583
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 4584
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 4710
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    move-object v2, v3

    .line 4711
    move-object v3, v2

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v7/widget/RecyclerView;->access$5000(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4713
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-nez v3, :cond_1

    .line 4714
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4718
    :cond_1
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 4719
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 4727
    :goto_0
    return-void

    .line 4721
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v3, :cond_3

    .line 4722
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4724
    :cond_3
    move-object v3, v2

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V

    .line 4725
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 6

    .prologue
    .line 5043
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    .line 5044
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-ge v4, v5, :cond_1

    .line 5045
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v3, v4

    .line 5046
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 5047
    move-object v4, v3

    const/16 v5, 0x200

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5044
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5050
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Landroid/support/v7/widget/RecyclerView$RecycledViewPool;)V
    .locals 4

    .prologue
    .line 5007
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    if-eqz v2, :cond_0

    .line 5008
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5010
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    .line 5011
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 5012
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mRecyclerPool:Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->attach(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 5014
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;)V
    .locals 4

    .prologue
    .line 5003
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheExtension:Landroid/support/v7/widget/RecyclerView$ViewCacheExtension;

    .line 5004
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 5

    .prologue
    .line 4216
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 4218
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v1

    if-le v3, v4, :cond_0

    .line 4219
    move-object v3, v0

    move v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4218
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4221
    :cond_0
    return-void
.end method

.method unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 4

    .prologue
    .line 4736
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4900(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4737
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 4741
    :goto_0
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4802(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;

    move-result-object v2

    .line 4742
    move-object v2, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->access$4902(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z

    move-result v2

    .line 4743
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4744
    return-void

    .line 4739
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method validateViewHolderForOffsetPosition(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 8

    .prologue
    .line 4243
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4248
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    move v0, v3

    .line 4264
    :goto_0
    return v0

    .line 4250
    :cond_0
    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_1

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_2

    .line 4251
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4254
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4256
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    move v2, v3

    .line 4257
    move v3, v2

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 4258
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 4261
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4262
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView$Recycler;->this$0:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->access$2900(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v5

    move-object v6, v1

    iget v6, v6, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 4264
    :cond_5
    const/4 v3, 0x1

    move v0, v3

    goto/16 :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 10

    .prologue
    .line 5024
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v8, v1

    move v9, v2

    add-int/2addr v8, v9

    move v3, v8

    .line 5025
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v4, v8

    .line 5026
    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v5, v8

    :goto_0
    move v8, v5

    if-ltz v8, :cond_2

    .line 5027
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v7/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-object v6, v8

    .line 5028
    move-object v8, v6

    if-nez v8, :cond_1

    .line 5026
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 5032
    :cond_1
    move-object v8, v6

    invoke-virtual {v8}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v8

    move v7, v8

    .line 5033
    move v8, v7

    move v9, v1

    if-lt v8, v9, :cond_0

    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_0

    .line 5034
    move-object v8, v6

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5035
    move-object v8, v0

    move v9, v5

    invoke-virtual {v8, v9}, Landroid/support/v7/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5040
    :cond_2
    return-void
.end method
