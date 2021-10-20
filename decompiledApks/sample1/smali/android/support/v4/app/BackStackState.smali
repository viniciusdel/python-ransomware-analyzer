.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mSharedElementSourceNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedElementTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 173
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 94
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 95
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 96
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 97
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 98
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 99
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 100
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 101
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 102
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 103
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 104
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 12

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v7, 0x0

    move v2, v7

    .line 50
    move-object v7, v1

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v7

    .line 51
    :goto_0
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 52
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    move v7, v2

    move-object v8, v3

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v7, v8

    move v2, v7

    .line 53
    :cond_0
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v7

    goto :goto_0

    .line 55
    :cond_1
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    const/4 v9, 0x7

    mul-int/lit8 v8, v8, 0x7

    move v9, v2

    add-int/2addr v8, v9

    new-array v8, v8, [I

    iput-object v8, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 57
    move-object v7, v1

    iget-boolean v7, v7, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v7, :cond_2

    .line 58
    new-instance v7, Ljava/lang/IllegalStateException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string v9, "Not on back stack"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 61
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord;->mHead:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v7

    .line 62
    const/4 v7, 0x0

    move v4, v7

    .line 63
    :goto_1
    move-object v7, v3

    if-eqz v7, :cond_6

    .line 64
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v9, v7, v8

    .line 65
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v9, :cond_3

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_2
    aput v9, v7, v8

    .line 66
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v9, v7, v8

    .line 67
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v9, v7, v8

    .line 68
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v9, v7, v8

    .line 69
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v9, v7, v8

    .line 70
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v7, :cond_5

    .line 71
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v5, v7

    .line 72
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move v9, v5

    aput v9, v7, v8

    .line 73
    const/4 v7, 0x0

    move v6, v7

    :goto_3
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_4

    .line 74
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    move-object v9, v3

    iget-object v9, v9, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/app/Fragment;

    iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v9, v7, v8

    .line 73
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 65
    :cond_3
    const/4 v9, -0x1

    goto :goto_2

    .line 79
    :cond_4
    :goto_4
    move-object v7, v3

    iget-object v7, v7, Landroid/support/v4/app/BackStackRecord$Op;->next:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v3, v7

    goto/16 :goto_1

    .line 77
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v8, v4

    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x0

    aput v9, v7, v8

    goto :goto_4

    .line 81
    :cond_6
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iput v8, v7, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 82
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput v8, v7, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 83
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v8, v7, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 84
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v8, v7, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 85
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v8, v7, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 86
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v8, v7, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 87
    move-object v7, v0

    move-object v8, v1

    iget v8, v8, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v8, v7, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 88
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v8, v7, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 89
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v8, v7, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 90
    move-object v7, v0

    move-object v8, v1

    iget-object v8, v8, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v8, v7, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 15

    .prologue
    .line 108
    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v10, Landroid/support/v4/app/BackStackRecord;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    move-object v2, v10

    .line 109
    const/4 v10, 0x0

    move v3, v10

    .line 110
    const/4 v10, 0x0

    move v4, v10

    .line 111
    :goto_0
    move v10, v3

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    array-length v11, v11

    if-ge v10, v11, :cond_4

    .line 112
    new-instance v10, Landroid/support/v4/app/BackStackRecord$Op;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    move-object v5, v10

    .line 113
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    aget v11, v11, v12

    iput v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 114
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " op #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " base fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v13, v3

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 116
    :cond_0
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    aget v10, v10, v11

    move v6, v10

    .line 117
    move v10, v6

    if-ltz v10, :cond_2

    .line 118
    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move v11, v6

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    move-object v7, v10

    .line 119
    move-object v10, v5

    move-object v11, v7

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    .line 123
    :goto_1
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    aget v11, v11, v12

    iput v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 124
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    aget v11, v11, v12

    iput v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 125
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    aget v11, v11, v12

    iput v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 126
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    aget v11, v11, v12

    iput v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 127
    move-object v10, v0

    iget-object v10, v10, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v11, v3

    add-int/lit8 v3, v3, 0x1

    aget v10, v10, v11

    move v7, v10

    .line 128
    move v10, v7

    if-lez v10, :cond_3

    .line 129
    move-object v10, v5

    new-instance v11, Ljava/util/ArrayList;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move v13, v7

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 130
    const/4 v10, 0x0

    move v8, v10

    :goto_2
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_3

    .line 131
    sget-boolean v10, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Instantiate "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " set remove fragment #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v13, v3

    aget v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 133
    :cond_1
    move-object v10, v1

    iget-object v10, v10, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mOps:[I

    move v12, v3

    add-int/lit8 v3, v3, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    move-object v9, v10

    .line 134
    move-object v10, v5

    iget-object v10, v10, Landroid/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    move-object v11, v9

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 130
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 121
    :cond_2
    move-object v10, v5

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;

    goto/16 :goto_1

    .line 137
    :cond_3
    move-object v10, v2

    move-object v11, v5

    invoke-virtual {v10, v11}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V

    .line 138
    add-int/lit8 v4, v4, 0x1

    .line 139
    goto/16 :goto_0

    .line 140
    :cond_4
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/app/BackStackState;->mTransition:I

    iput v11, v10, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 141
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    iput v11, v10, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 142
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 143
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/app/BackStackState;->mIndex:I

    iput v11, v10, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 144
    move-object v10, v2

    const/4 v11, 0x1

    iput-boolean v11, v10, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 145
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v11, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 146
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 147
    move-object v10, v2

    move-object v11, v0

    iget v11, v11, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v11, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 148
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 149
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;

    .line 150
    move-object v10, v2

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    iput-object v11, v10, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;

    .line 151
    move-object v10, v2

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 152
    move-object v10, v2

    move-object v0, v10

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 161
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 167
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    move-object v4, v1

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 169
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 170
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 171
    return-void
.end method
