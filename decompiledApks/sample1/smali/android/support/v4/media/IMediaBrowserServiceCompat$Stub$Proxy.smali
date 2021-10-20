.class Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaBrowserServiceCompat.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub;
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
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 118
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 119
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 164
    move-object v5, v3

    :try_start_0
    const-string v6, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    move-object v5, v3

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 167
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x3

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 170
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 172
    return-void

    .line 166
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    move-object v0, v1

    return-object v0
.end method

.method public connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    move-object v4, v6

    .line 132
    move-object v6, v4

    :try_start_0
    const-string v7, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 135
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    move-object v6, v2

    move-object v7, v4

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 141
    :goto_0
    move-object v6, v4

    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 142
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v7, 0x1

    move-object v8, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-interface {v6, v7, v8, v9, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 145
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 147
    return-void

    .line 139
    :cond_0
    move-object v6, v4

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    move-object v6, v5

    throw v6

    .line 141
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public disconnect(Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    move-object v2, v4

    .line 152
    move-object v4, v2

    :try_start_0
    const-string v5, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    move-object v4, v2

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    invoke-interface {v5}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 154
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v4, v5, v6, v7, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 157
    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 159
    return-void

    .line 153
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    move-object v4, v3

    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    move-object v0, p0

    const-string v1, "android.support.v4.media.IMediaBrowserServiceCompat"

    move-object v0, v1

    return-object v0
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 190
    move-object v5, v3

    :try_start_0
    const-string v6, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 191
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 193
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    move-object v5, v2

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    .line 199
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x5

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 202
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 204
    return-void

    .line 197
    :cond_0
    move-object v5, v3

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    move-object v3, v5

    .line 177
    move-object v5, v3

    :try_start_0
    const-string v6, "android.support.v4.media.IMediaBrowserServiceCompat"

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 178
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    move-object v5, v3

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_0
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 180
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/IMediaBrowserServiceCompat$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x4

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 183
    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 185
    return-void

    .line 179
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    move-object v5, v4

    throw v5
.end method
