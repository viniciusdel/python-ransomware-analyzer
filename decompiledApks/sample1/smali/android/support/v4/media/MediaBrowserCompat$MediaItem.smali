.class public Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaBrowserCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$MediaItem$Flags;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/MediaBrowserCompat$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 262
    new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 238
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    .line 239
    move-object v2, v0

    sget-object v3, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/MediaDescriptionCompat;

    iput-object v3, v2, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 240
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/MediaBrowserCompat$1;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .locals 7
    .param p1    # Landroid/support/v4/media/MediaDescriptionCompat;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 224
    move-object v3, v1

    if-nez v3, :cond_0

    .line 225
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "description cannot be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "description must have a non-empty media id"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    :cond_1
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    .line 231
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 232
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 244
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getDescription()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 302
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    move-object v0, v1

    return-object v0
.end method

.method public getFlags()I
    .locals 2

    .prologue
    .line 279
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    move v0, v1

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v1}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public isBrowsable()Z
    .locals 3

    .prologue
    .line 287
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPlayable()Z
    .locals 3

    .prologue
    .line 295
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 255
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "MediaItem{"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 256
    move-object v2, v1

    const-string v3, "mFlags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 257
    move-object v2, v1

    const-string v3, ", mDescription="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 258
    move-object v2, v1

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 259
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 249
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mFlags:I

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 251
    return-void
.end method
