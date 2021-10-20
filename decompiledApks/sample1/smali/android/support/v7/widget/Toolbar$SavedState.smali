.class public Landroid/support/v7/widget/Toolbar$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/Toolbar;
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
            "Landroid/support/v7/widget/Toolbar$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field expandedMenuItemId:I

.field isOverflowOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1928
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v7/widget/Toolbar$SavedState$1;-><init>()V

    sput-object v0, Landroid/support/v7/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 1912
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1913
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1914
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1915
    return-void

    .line 1914
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 1918
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1919
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 1923
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1924
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1926
    return-void

    .line 1925
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
