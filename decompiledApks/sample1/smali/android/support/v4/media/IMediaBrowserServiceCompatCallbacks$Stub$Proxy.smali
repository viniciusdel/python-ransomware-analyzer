.class Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCompatCallbacks.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 97
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 98
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    const-string v1, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    move-object v0, v1

    return-object v0
.end method

.method public onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 118
    move-object v6, v4

    :try_start_0
    const-string v7, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 119
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 121
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    move-object v6, v2

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_1

    .line 128
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 134
    :goto_1
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 137
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 125
    :cond_0
    move-object v6, v4

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 132
    :cond_1
    move-object v6, v4

    const/4 v7, 0x0

    :try_start_2
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onConnectFailed()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    move-object v1, v3

    .line 144
    move-object v3, v1

    :try_start_0
    const-string v4, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 148
    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    move-object v3, v2

    throw v3
.end method

.method public onLoadChildren(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 155
    move-object v5, v3

    :try_start_0
    const-string v6, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 158
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x3

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 161
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 163
    return-void

    .line 161
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method
