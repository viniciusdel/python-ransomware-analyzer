.class public abstract Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;
.super Landroid/os/Binder;
.source "IMediaBrowserServiceCompatCallbacks.java"

# interfaces
.implements Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

.field static final TRANSACTION_onConnect:I = 0x1

.field static final TRANSACTION_onConnectFailed:I = 0x2

.field static final TRANSACTION_onLoadChildren:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    .line 20
    move-object v1, v0

    move-object v2, v0

    const-string v3, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v2, v0

    if-nez v2, :cond_0

    .line 29
    const/4 v2, 0x0

    move-object v0, v2

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    move-object v2, v0

    const-string v3, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-interface {v2, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    move-object v1, v2

    .line 32
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    if-eqz v2, :cond_1

    .line 33
    move-object v2, v1

    check-cast v2, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks;

    move-object v0, v2

    goto :goto_0

    .line 35
    :cond_1
    new-instance v2, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v8, v1

    sparse-switch v8, :sswitch_data_0

    .line 90
    move-object v8, v0

    move v9, v1

    move-object v10, v2

    move-object v11, v3

    move v12, v4

    invoke-super {v8, v9, v10, v11, v12}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    move v0, v8

    :goto_0
    return v0

    .line 47
    :sswitch_0
    move-object v8, v3

    const-string v9, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 52
    :sswitch_1
    move-object v8, v2

    const-string v9, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 56
    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 57
    sget-object v8, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v9, v2

    invoke-interface {v8, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-object v6, v8

    .line 63
    :goto_1
    const/4 v8, 0x0

    move-object v9, v2

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eq v8, v9, :cond_1

    .line 64
    sget-object v8, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v9, v2

    invoke-interface {v8, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    move-object v7, v8

    .line 69
    :goto_2
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onConnect(Ljava/lang/String;Landroid/support/v4/media/session/MediaSessionCompat$Token;Landroid/os/Bundle;)V

    .line 70
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 60
    :cond_0
    const/4 v8, 0x0

    move-object v6, v8

    goto :goto_1

    .line 67
    :cond_1
    const/4 v8, 0x0

    move-object v7, v8

    goto :goto_2

    .line 74
    :sswitch_2
    move-object v8, v2

    const-string v9, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    move-object v8, v0

    invoke-virtual {v8}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onConnectFailed()V

    .line 76
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 80
    :sswitch_3
    move-object v8, v2

    const-string v9, "android.support.v4.media.IMediaBrowserServiceCompatCallbacks"

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    move-object v8, v2

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 84
    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v7, v8

    .line 85
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v8

    move-object v6, v8

    .line 86
    move-object v8, v0

    move-object v9, v5

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/support/v4/media/IMediaBrowserServiceCompatCallbacks$Stub;->onLoadChildren(Ljava/lang/String;Ljava/util/List;)V

    .line 87
    const/4 v8, 0x1

    move v0, v8

    goto :goto_0

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
