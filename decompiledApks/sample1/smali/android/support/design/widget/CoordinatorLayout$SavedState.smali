.class public Landroid/support/design/widget/CoordinatorLayout$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/CoordinatorLayout;
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
            "Landroid/support/design/widget/CoordinatorLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field behaviorStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2635
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$SavedState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$SavedState$1;-><init>()V

    invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    sput-object v0, Landroid/support/design/widget/CoordinatorLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 12

    .prologue
    .line 2597
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 2599
    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v3, v7

    .line 2601
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 2602
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readIntArray([I)V

    .line 2604
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v7

    move-object v5, v7

    .line 2606
    move-object v7, v0

    new-instance v8, Landroid/util/SparseArray;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v3

    invoke-direct {v9, v10}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v8, v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 2607
    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 2608
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move-object v9, v5

    move v10, v6

    aget-object v9, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 2607
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2610
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 4

    .prologue
    .line 2613
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2614
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 11

    .prologue
    .line 2618
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    invoke-super {v7, v8, v9}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2620
    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    :goto_0
    move v3, v7

    .line 2621
    move-object v7, v1

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2623
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 2624
    move v7, v3

    new-array v7, v7, [Landroid/os/Parcelable;

    move-object v5, v7

    .line 2626
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 2627
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    .line 2628
    move-object v7, v5

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    move v10, v6

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Parcelable;

    aput-object v9, v7, v8

    .line 2626
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2620
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 2630
    :cond_1
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2631
    move-object v7, v1

    move-object v8, v5

    move v9, v2

    invoke-virtual {v7, v8, v9}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 2633
    return-void
.end method
