.class public abstract Landroid/support/v7/widget/RecyclerView$ViewHolder;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewHolder"
.end annotation


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

.field mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8232
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 8256
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 8128
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8129
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8130
    move-object v2, v0

    const-wide/16 v3, -0x1

    iput-wide v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 8131
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    .line 8132
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8135
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8137
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8234
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 8235
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 8237
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8241
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 8243
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 8247
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8257
    move-object v2, v1

    if-nez v2, :cond_0

    .line 8258
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "itemView may not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8260
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 8261
    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->onEnteredHiddenState()V

    return-void
.end method

.method static synthetic access$1700(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 2

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->onLeftHiddenState()V

    return-void
.end method

.method static synthetic access$4700(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$4802(Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/support/v7/widget/RecyclerView$Recycler;
    .locals 7

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$4900(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$4902(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)Z
    .locals 7

    .prologue
    .line 8126
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$6100(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method static synthetic access$6300(Landroid/support/v7/widget/RecyclerView$ViewHolder;)I
    .locals 2

    .prologue
    .line 8126
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v0, v1

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 5

    .prologue
    .line 8475
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-nez v1, :cond_0

    .line 8476
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    .line 8477
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    .line 8479
    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 3

    .prologue
    .line 8612
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState()V
    .locals 3

    .prologue
    .line 8520
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8522
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 8524
    return-void
.end method

.method private onLeftHiddenState()V
    .locals 3

    .prologue
    .line 8530
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 8532
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8533
    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 3

    .prologue
    .line 8604
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 8466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_1

    .line 8467
    move-object v2, v0

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8472
    :cond_0
    :goto_0
    return-void

    .line 8468
    :cond_1
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, 0x400

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_0

    .line 8469
    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->createPayloadsIfNeeded()V

    .line 8470
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 6

    .prologue
    .line 8462
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v4, v1

    or-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8463
    return-void
.end method

.method clearOldPosition()V
    .locals 3

    .prologue
    .line 8286
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8287
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8288
    return-void
.end method

.method clearPayload()V
    .locals 4

    .prologue
    .line 8482
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8483
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 8485
    :cond_0
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x401

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8486
    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 4

    .prologue
    .line 8413
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x21

    and-int/lit8 v2, v2, -0x21

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8414
    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 4

    .prologue
    .line 8417
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x101

    and-int/lit16 v2, v2, -0x101

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8418
    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 7

    .prologue
    .line 8264
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 8265
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 8266
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8267
    return-void
.end method

.method public final getAdapterPosition()I
    .locals 3

    .prologue
    .line 8362
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_0

    .line 8363
    const/4 v1, -0x1

    move v0, v1

    .line 8365
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->access$5500(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;)I

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 3

    .prologue
    .line 8390
    move-object v0, p0

    move-object v1, v0

    iget-wide v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    move-wide v0, v1

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 2

    .prologue
    .line 8397
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemViewType:I

    move v0, v1

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 3

    .prologue
    .line 8336
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 2

    .prologue
    .line 8380
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    move v0, v1

    return v0
.end method

.method public final getPosition()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8310
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8489
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x400

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_2

    .line 8490
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPayloads:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 8492
    :cond_0
    sget-object v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    move-object v0, v1

    .line 8498
    :goto_0
    return-object v0

    .line 8495
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mUnmodifiedPayloads:Ljava/util/List;

    move-object v0, v1

    goto :goto_0

    .line 8498
    :cond_2
    sget-object v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    move-object v0, v1

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 4

    .prologue
    .line 8446
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 3

    .prologue
    .line 8454
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 3

    .prologue
    .line 8438
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 3

    .prologue
    .line 8430
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 3

    .prologue
    .line 8595
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->hasTransientState(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 3

    .prologue
    .line 8442
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 2

    .prologue
    .line 8401
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 3

    .prologue
    .line 8450
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 3

    .prologue
    .line 8616
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 3

    .prologue
    .line 8434
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 7

    .prologue
    .line 8270
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 8271
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8273
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 8274
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8276
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 8277
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8279
    :cond_2
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    move v5, v1

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8280
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 8281
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 8283
    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 4

    .prologue
    .line 8503
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8504
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 8505
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8506
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    .line 8507
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 8508
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8509
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowedHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8510
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mShadowingHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 8511
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->clearPayload()V

    .line 8512
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mWasImportantForAccessibilityBeforeHidden:I

    .line 8513
    return-void
.end method

.method saveOldPosition()V
    .locals 3

    .prologue
    .line 8291
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 8292
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    .line 8294
    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 7

    .prologue
    .line 8458
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    move v5, v2

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    move v5, v1

    move v6, v2

    and-int/2addr v5, v6

    or-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8459
    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 6

    .prologue
    .line 8570
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8571
    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-gez v2, :cond_2

    .line 8572
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    .line 8577
    const-string v2, "View"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 8587
    :cond_0
    :goto_1
    return-void

    .line 8570
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8579
    :cond_2
    move v2, v1

    if-nez v2, :cond_3

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 8580
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1

    .line 8581
    :cond_3
    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    if-nez v2, :cond_0

    .line 8582
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    iput v3, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroid/support/v7/widget/RecyclerView$Recycler;Z)V
    .locals 5

    .prologue
    .line 8425
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    .line 8426
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    .line 8427
    return-void
.end method

.method shouldIgnore()Z
    .locals 3

    .prologue
    .line 8297
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 4

    .prologue
    .line 8421
    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v3, -0x81

    and-int/lit16 v2, v2, -0x81

    iput v2, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    .line 8422
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 8537
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ViewHolder{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mItemId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldPos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mOldPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pLpos:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 8540
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8541
    move-object v2, v1

    const-string v3, " scrap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z

    if-eqz v3, :cond_a

    const-string v3, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8544
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8545
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    const-string v3, " unbound"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8546
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    const-string v3, " update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8547
    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v1

    const-string v3, " removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8548
    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v1

    const-string v3, " ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8549
    :cond_5
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object v2, v1

    const-string v3, " tmpDetached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8550
    :cond_6
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v2

    if-nez v2, :cond_7

    move-object v2, v1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " not recyclable("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mIsRecyclableCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8551
    :cond_7
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->isAdapterPositionUnknown()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v1

    const-string v3, " undefined adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8553
    :cond_8
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_9

    move-object v2, v1

    const-string v3, " no parent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8554
    :cond_9
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 8555
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0

    .line 8541
    :cond_a
    const-string v3, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 3

    .prologue
    .line 8405
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mScrapContainer:Landroid/support/v7/widget/RecyclerView$Recycler;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView$Recycler;->unscrapView(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 8406
    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 3

    .prologue
    .line 8409
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->mFlags:I

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
