.class public Landroid/support/v7/widget/LinearLayoutManager$SavedState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/widget/LinearLayoutManager$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAnchorLayoutFromEnd:Z

.field mAnchorOffset:I

.field mAnchorPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2085
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/LinearLayoutManager$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 2049
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 2051
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 2053
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2054
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2055
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2056
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2057
    return-void

    .line 2056
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V
    .locals 4

    .prologue
    .line 2059
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 2060
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2061
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 2062
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 2063
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 2075
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method hasValidAnchor()Z
    .locals 2

    .prologue
    .line 2066
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method invalidateAnchor()V
    .locals 3

    .prologue
    .line 2070
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 2071
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 2080
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2081
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2082
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2083
    return-void

    .line 2082
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
