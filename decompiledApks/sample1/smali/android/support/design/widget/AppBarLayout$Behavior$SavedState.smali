.class public Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/AppBarLayout$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field firstVisibileChildAtMinimumHeight:Z

.field firstVisibileChildPercentageShown:F

.field firstVisibleChildIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1113
    new-instance v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 5

    .prologue
    .line 1095
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1096
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    .line 1097
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    iput v4, v3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    .line 1098
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Parcel;->readByte()B

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    .line 1099
    return-void

    .line 1098
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1103
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 1107
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1108
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildPercentageShown:F

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1110
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibileChildAtMinimumHeight:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 1111
    return-void

    .line 1110
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
