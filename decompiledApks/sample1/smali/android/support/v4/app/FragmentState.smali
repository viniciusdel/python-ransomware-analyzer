.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/FragmentState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mArguments:Landroid/os/Bundle;

.field final mClassName:Ljava/lang/String;

.field final mContainerId:I

.field final mDetached:Z

.field final mFragmentId:I

.field final mFromLayout:Z

.field final mIndex:I

.field mInstance:Landroid/support/v4/app/Fragment;

.field final mRetainInstance:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field final mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 141
    new-instance v0, Landroid/support/v4/app/FragmentState$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/app/FragmentState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 81
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 82
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 85
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 86
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 87
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 88
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 89
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 90
    return-void

    .line 82
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 86
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 87
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 68
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    .line 69
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mIndex:I

    .line 70
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    .line 71
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    .line 72
    move-object v2, v0

    move-object v3, v1

    iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I

    iput v3, v2, Landroid/support/v4/app/FragmentState;->mContainerId:I

    .line 73
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    .line 74
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    .line 75
    move-object v2, v0

    move-object v3, v1

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mDetached:Z

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentState;->mDetached:Z

    .line 76
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    iput-object v3, v2, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 125
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
    .locals 9

    .prologue
    .line 93
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    if-eqz v4, :cond_0

    .line 94
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v0, v4

    .line 121
    :goto_0
    return-object v0

    .line 97
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object v3, v4

    .line 98
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    .line 99
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 102
    :cond_1
    move-object v4, v0

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-static {v5, v6, v7}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    iput-object v5, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    .line 104
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    .line 105
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 106
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 108
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/FragmentState;->mIndex:I

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V

    .line 109
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 110
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 111
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    iput v5, v4, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 112
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/FragmentState;->mContainerId:I

    iput v5, v4, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 113
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 114
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 115
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentState;->mDetached:Z

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 116
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    iput-object v5, v4, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 118
    sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instantiated fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 121
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;

    move-object v0, v4

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mIndex:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mFromLayout:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mFragmentId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/FragmentState;->mContainerId:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentState;->mDetached:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 138
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 139
    return-void

    .line 131
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 135
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 136
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method
