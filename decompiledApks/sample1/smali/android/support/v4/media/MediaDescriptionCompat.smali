.class public final Landroid/support/v4/media/MediaDescriptionCompat;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaDescriptionCompat$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/MediaDescriptionCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/CharSequence;

.field private mDescriptionObj:Ljava/lang/Object;

.field private final mExtras:Landroid/os/Bundle;

.field private final mIcon:Landroid/graphics/Bitmap;

.field private final mIconUri:Landroid/net/Uri;

.field private final mMediaId:Ljava/lang/String;

.field private final mMediaUri:Landroid/net/Uri;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/media/MediaDescriptionCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 84
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 85
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 86
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 87
    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object v4, v1

    invoke-interface {v3, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 88
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 89
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 90
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 91
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/MediaDescriptionCompat$1;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V
    .locals 11

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v9, v0

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 73
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    .line 74
    move-object v9, v0

    move-object v10, v2

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    .line 75
    move-object v9, v0

    move-object v10, v3

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    .line 76
    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    .line 77
    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    .line 78
    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    .line 79
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    .line 80
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;Landroid/support/v4/media/MediaDescriptionCompat$1;)V
    .locals 19

    .prologue
    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    invoke-direct/range {v10 .. v18}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/net/Uri;Landroid/os/Bundle;Landroid/net/Uri;)V

    return-void
.end method

.method public static fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 6

    .prologue
    .line 242
    move-object v0, p0

    move-object v3, v0

    if-eqz v3, :cond_0

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_1

    .line 243
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    .line 260
    :goto_0
    return-object v0

    .line 246
    :cond_1
    new-instance v3, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    move-object v1, v3

    .line 247
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getMediaId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 248
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 249
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getSubtitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 250
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 251
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getIconBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 252
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getIconUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 253
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 254
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_2

    .line 255
    move-object v3, v1

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/media/MediaDescriptionCompatApi23;->getMediaUri(Ljava/lang/Object;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v3

    .line 257
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v3

    move-object v2, v3

    .line 258
    move-object v3, v2

    move-object v4, v0

    iput-object v4, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    .line 260
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    move-object v0, v1

    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public getMediaDescription()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 210
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    if-nez v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 211
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    move-object v0, v2

    .line 226
    :goto_0
    return-object v0

    .line 213
    :cond_1
    invoke-static {}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .line 214
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setMediaId(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 216
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setSubtitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 217
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    .line 218
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setIconBitmap(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 219
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setIconUri(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 220
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V

    .line 221
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 222
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    invoke-static {v2, v3}, Landroid/support/v4/media/MediaDescriptionCompatApi23$Builder;->setMediaUri(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 224
    :cond_2
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/support/v4/media/MediaDescriptionCompatApi21$Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    .line 226
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mDescriptionObj:Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getMediaUri()Landroid/net/Uri;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 120
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    move-object v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 195
    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_0

    .line 181
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaDescriptionCompat;->mMediaId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mTitle:Ljava/lang/CharSequence;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 183
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mSubtitle:Ljava/lang/CharSequence;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 184
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaDescriptionCompat;->mDescription:Ljava/lang/CharSequence;

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 185
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaDescriptionCompat;->mIcon:Landroid/graphics/Bitmap;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaDescriptionCompat;->mIconUri:Landroid/net/Uri;

    move v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaDescriptionCompat;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/media/MediaDescriptionCompat;->getMediaDescription()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    move v5, v2

    invoke-static {v3, v4, v5}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->writeToParcel(Ljava/lang/Object;Landroid/os/Parcel;I)V

    goto :goto_0
.end method
