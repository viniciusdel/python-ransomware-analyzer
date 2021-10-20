.class public Landroid/support/v4/widget/DrawerLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayout;
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
            "Landroid/support/v4/widget/DrawerLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field lockModeLeft:I

.field lockModeRight:I

.field openDrawerGravity:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1787
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 1773
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1768
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1769
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1770
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1774
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1775
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1778
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1768
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1769
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1770
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1779
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 1783
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1784
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    return-void
.end method
