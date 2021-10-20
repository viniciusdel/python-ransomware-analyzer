.class public Landroid/support/v4/os/ResultReceiver;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/ResultReceiver$MyResultReceiver;,
        Landroid/support/v4/os/ResultReceiver$MyRunnable;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/os/ResultReceiver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mHandler:Landroid/os/Handler;

.field final mLocal:Z

.field mReceiver:Landroid/support/v4/os/IResultReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 134
    new-instance v0, Landroid/support/v4/os/ResultReceiver$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/os/ResultReceiver$1;-><init>()V

    sput-object v0, Landroid/support/v4/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 76
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 77
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 129
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    .line 130
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    .line 131
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/os/IResultReceiver;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    .line 132
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 116
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public send(ILandroid/os/Bundle;)V
    .locals 11

    .prologue
    .line 88
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/os/ResultReceiver;->mLocal:Z

    if-eqz v4, :cond_1

    .line 89
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 90
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v5, Landroid/support/v4/os/ResultReceiver$MyRunnable;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move v8, v1

    move-object v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/os/ResultReceiver$MyRunnable;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v4

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    goto :goto_0

    .line 97
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    if-eqz v4, :cond_2

    .line 99
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    move v5, v1

    move-object v6, v2

    invoke-interface {v4, v5, v6}, Landroid/support/v4/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_2
    :goto_1
    goto :goto_0

    .line 100
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v3, v6

    monitor-enter v5

    .line 121
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    if-nez v5, :cond_0

    .line 122
    move-object v5, v0

    new-instance v6, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/os/ResultReceiver$MyResultReceiver;-><init>(Landroid/support/v4/os/ResultReceiver;)V

    iput-object v6, v5, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    .line 124
    :cond_0
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/os/ResultReceiver;->mReceiver:Landroid/support/v4/os/IResultReceiver;

    invoke-interface {v6}, Landroid/support/v4/os/IResultReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 125
    move-object v5, v3

    monitor-exit v5

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method
