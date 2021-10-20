.class public final Landroid/support/v4/media/MediaMetadataCompat;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaMetadataCompat$Builder;,
        Landroid/support/v4/media/MediaMetadataCompat$RatingKey;,
        Landroid/support/v4/media/MediaMetadataCompat$BitmapKey;,
        Landroid/support/v4/media/MediaMetadataCompat$LongKey;,
        Landroid/support/v4/media/MediaMetadataCompat$TextKey;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/MediaMetadataCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_LONG:I = 0x0

.field private static final METADATA_TYPE_RATING:I = 0x3

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

.field private mMetadataObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 241
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    .line 242
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.TITLE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ARTIST"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DURATION"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 245
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 246
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.AUTHOR"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 247
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.WRITER"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPOSER"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 249
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPILATION"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 250
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DATE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.YEAR"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 252
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.GENRE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 253
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 254
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.NUM_TRACKS"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISC_NUMBER"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 256
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 257
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ART"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ART_URI"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 259
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 261
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.USER_RATING"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 262
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.RATING"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 263
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 264
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 265
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 268
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    const-string v1, "android.media.metadata.MEDIA_ID"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android.media.metadata.TITLE"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android.media.metadata.ARTIST"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "android.media.metadata.ALBUM"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string v3, "android.media.metadata.WRITER"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string v3, "android.media.metadata.AUTHOR"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x6

    const-string v3, "android.media.metadata.COMPOSER"

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    .line 281
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android.media.metadata.DISPLAY_ICON"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android.media.metadata.ART"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "android.media.metadata.ALBUM_ART"

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    .line 287
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string v3, "android.media.metadata.DISPLAY_ICON_URI"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string v3, "android.media.metadata.ART_URI"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string v3, "android.media.metadata.ALBUM_ART_URI"

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    .line 585
    new-instance v0, Landroid/support/v4/media/MediaMetadataCompat$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/media/MediaMetadataCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 297
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 298
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat$1;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 301
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 302
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    .line 303
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/support/v4/media/MediaMetadataCompat$1;)V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$200()Landroid/support/v4/util/ArrayMap;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    return-object v0
.end method

.method public static fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;
    .locals 10

    .prologue
    .line 509
    move-object v0, p0

    move-object v5, v0

    if-eqz v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 510
    :cond_0
    const/4 v5, 0x0

    move-object v0, v5

    .line 539
    :goto_0
    return-object v0

    .line 513
    :cond_1
    new-instance v5, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    move-object v1, v5

    .line 514
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v4/media/MediaMetadataCompatApi21;->keySet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 515
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 516
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 517
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 536
    :cond_2
    :goto_2
    goto :goto_1

    .line 519
    :pswitch_0
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getBitmap(Ljava/lang/Object;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v5

    .line 521
    goto :goto_2

    .line 523
    :pswitch_1
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getLong(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v5

    .line 525
    goto :goto_2

    .line 527
    :pswitch_2
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getRating(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v5

    .line 529
    goto :goto_2

    .line 531
    :pswitch_3
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-static {v7, v8}, Landroid/support/v4/media/MediaMetadataCompatApi21;->getText(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;

    move-result-object v5

    goto :goto_2

    .line 537
    :cond_3
    move-object v5, v1

    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v5

    move-object v2, v5

    .line 538
    move-object v5, v2

    move-object v6, v0

    iput-object v6, v5, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    .line 539
    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    .line 517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public describeContents()I
    .locals 2

    .prologue
    .line 459
    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 382
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 387
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 383
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 385
    const-string v4, "MediaMetadata"

    const-string v5, "Failed to retrieve a key as Bitmap."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 492
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public getDescription()Landroid/support/v4/media/MediaDescriptionCompat;
    .locals 14

    .prologue
    .line 396
    move-object v0, p0

    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    if-eqz v9, :cond_0

    .line 397
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    move-object v0, v9

    .line 454
    :goto_0
    return-object v0

    .line 400
    :cond_0
    move-object v9, v0

    const-string v10, "android.media.metadata.MEDIA_ID"

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 402
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/CharSequence;

    move-object v2, v9

    .line 403
    const/4 v9, 0x0

    move-object v3, v9

    .line 404
    const/4 v9, 0x0

    move-object v4, v9

    .line 407
    move-object v9, v0

    const-string v10, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v5, v9

    .line 408
    move-object v9, v5

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 411
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v5

    aput-object v11, v9, v10

    .line 412
    move-object v9, v2

    const/4 v10, 0x1

    move-object v11, v0

    const-string v12, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {v11, v12}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    .line 413
    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v0

    const-string v12, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {v11, v12}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v11

    aput-object v11, v9, v10

    .line 428
    :cond_1
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    sget-object v10, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 429
    move-object v9, v0

    sget-object v10, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    move v11, v6

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v7, v9

    .line 430
    move-object v9, v7

    if-eqz v9, :cond_6

    .line 431
    move-object v9, v7

    move-object v3, v9

    .line 437
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    sget-object v10, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 438
    move-object v9, v0

    sget-object v10, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    move v11, v6

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaMetadataCompat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 439
    move-object v9, v7

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 440
    move-object v9, v7

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    move-object v4, v9

    .line 445
    :cond_3
    new-instance v9, Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;-><init>()V

    move-object v6, v9

    .line 446
    move-object v9, v6

    move-object v10, v1

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setMediaId(Ljava/lang/String;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 447
    move-object v9, v6

    move-object v10, v2

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 448
    move-object v9, v6

    move-object v10, v2

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 449
    move-object v9, v6

    move-object v10, v2

    const/4 v11, 0x2

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 450
    move-object v9, v6

    move-object v10, v3

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 451
    move-object v9, v6

    move-object v10, v4

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->setIconUri(Landroid/net/Uri;)Landroid/support/v4/media/MediaDescriptionCompat$Builder;

    move-result-object v9

    .line 452
    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v10}, Landroid/support/v4/media/MediaDescriptionCompat$Builder;->build()Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v10

    iput-object v10, v9, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 454
    move-object v9, v0

    iget-object v9, v9, Landroid/support/v4/media/MediaMetadataCompat;->mDescription:Landroid/support/v4/media/MediaDescriptionCompat;

    move-object v0, v9

    goto/16 :goto_0

    .line 416
    :cond_4
    const/4 v9, 0x0

    move v6, v9

    .line 417
    const/4 v9, 0x0

    move v7, v9

    .line 418
    :goto_3
    move v9, v6

    move-object v10, v2

    array-length v10, v10

    if-ge v9, v10, :cond_1

    move v9, v7

    sget-object v10, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_1

    .line 419
    move-object v9, v0

    sget-object v10, Landroid/support/v4/media/MediaMetadataCompat;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    move-object v8, v9

    .line 420
    move-object v9, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 422
    move-object v9, v2

    move v10, v6

    add-int/lit8 v6, v6, 0x1

    move-object v11, v8

    aput-object v11, v9, v10

    .line 424
    :cond_5
    goto :goto_3

    .line 428
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 437
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 351
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v3, v1

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public getMediaMetadata()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 553
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    if-nez v5, :cond_0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1

    .line 554
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    move-object v0, v5

    .line 582
    :goto_0
    return-object v0

    .line 557
    :cond_1
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 558
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/media/MediaMetadataCompat;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 559
    sget-object v5, Landroid/support/v4/media/MediaMetadataCompat;->METADATA_KEYS_TYPE:Landroid/support/v4/util/ArrayMap;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    move-object v4, v5

    .line 560
    move-object v5, v4

    if-eqz v5, :cond_2

    .line 561
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 580
    :cond_2
    :goto_2
    goto :goto_1

    .line 563
    :pswitch_0
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/media/MediaMetadataCompat;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putBitmap(Ljava/lang/Object;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 565
    goto :goto_2

    .line 567
    :pswitch_1
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/media/MediaMetadataCompat;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putLong(Ljava/lang/Object;Ljava/lang/String;J)V

    .line 569
    goto :goto_2

    .line 571
    :pswitch_2
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/media/MediaMetadataCompat;->getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/RatingCompat;->getRating()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putRating(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 573
    goto :goto_2

    .line 575
    :pswitch_3
    move-object v5, v1

    move-object v6, v3

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/media/MediaMetadataCompat;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->putText(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 581
    :cond_3
    move-object v5, v0

    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/media/MediaMetadataCompatApi21$Builder;->build(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    .line 582
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaMetadataCompat;->mMetadataObj:Ljava/lang/Object;

    move-object v0, v5

    goto :goto_0

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getRating(Ljava/lang/String;)Landroid/support/v4/media/RatingCompat;
    .locals 7

    .prologue
    .line 362
    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move-object v2, v4

    .line 364
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/RatingCompat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 369
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    .line 365
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 367
    const-string v4, "MediaMetadata"

    const-string v5, "Failed to retrieve a key as Rating."

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 336
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v2, v3

    .line 337
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 338
    move-object v3, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 340
    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaMetadataCompat;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 465
    return-void
.end method
