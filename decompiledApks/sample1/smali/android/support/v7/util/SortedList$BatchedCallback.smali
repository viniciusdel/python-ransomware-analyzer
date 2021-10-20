.class public Landroid/support/v7/util/SortedList$BatchedCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# static fields
.field static final TYPE_ADD:I = 0x1

.field static final TYPE_CHANGE:I = 0x3

.field static final TYPE_MOVE:I = 0x4

.field static final TYPE_NONE:I = 0x0

.field static final TYPE_REMOVE:I = 0x2


# instance fields
.field mLastEventCount:I

.field mLastEventPosition:I

.field mLastEventType:I

.field private final mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/util/SortedList$Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 800
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    .line 789
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    .line 790
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 791
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 801
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 802
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/util/SortedList$BatchedCallback;)Landroid/support/v7/util/SortedList$Callback;
    .locals 2

    .prologue
    .line 780
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 860
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 865
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 806
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 4

    .prologue
    .line 874
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    if-nez v1, :cond_0

    .line 889
    :goto_0
    return-void

    .line 877
    :cond_0
    move-object v1, v0

    iget v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    packed-switch v1, :pswitch_data_0

    .line 888
    :goto_1
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    .line 889
    goto :goto_0

    .line 879
    :pswitch_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/util/SortedList$Callback;->onInserted(II)V

    .line 880
    goto :goto_1

    .line 882
    :pswitch_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/util/SortedList$Callback;->onRemoved(II)V

    .line 883
    goto :goto_1

    .line 885
    :pswitch_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move-object v2, v0

    iget v2, v2, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/util/SortedList$Callback;->onChanged(II)V

    goto :goto_1

    .line 877
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(II)V
    .locals 8

    .prologue
    .line 843
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v5, v6

    if-gt v4, v5, :cond_0

    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-lt v4, v5, :cond_0

    .line 847
    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v4, v5

    move v3, v4

    .line 848
    move-object v4, v0

    move v5, v1

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 849
    move-object v4, v0

    move v5, v3

    move v6, v1

    move v7, v2

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 853
    move-object v4, v0

    move v5, v1

    iput v5, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 854
    move-object v4, v0

    move v5, v2

    iput v5, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 855
    move-object v4, v0

    const/4 v5, 0x3

    iput v5, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    .line 856
    goto :goto_0
.end method

.method public onInserted(II)V
    .locals 7

    .prologue
    .line 811
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    if-lt v3, v4, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_0

    .line 813
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 814
    move-object v3, v0

    move v4, v1

    move-object v5, v0

    iget v5, v5, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 821
    :goto_0
    return-void

    .line 817
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 818
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 819
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 820
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    .line 821
    goto :goto_0
.end method

.method public onMoved(II)V
    .locals 6

    .prologue
    .line 837
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 838
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/util/SortedList$Callback;->onMoved(II)V

    .line 839
    return-void
.end method

.method public onRemoved(II)V
    .locals 7

    .prologue
    .line 825
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 826
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    move v5, v2

    add-int/2addr v4, v5

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 833
    :goto_0
    return-void

    .line 829
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v7/util/SortedList$BatchedCallback;->dispatchLastEvent()V

    .line 830
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventPosition:I

    .line 831
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventCount:I

    .line 832
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Landroid/support/v7/util/SortedList$BatchedCallback;->mLastEventType:I

    .line 833
    goto :goto_0
.end method
