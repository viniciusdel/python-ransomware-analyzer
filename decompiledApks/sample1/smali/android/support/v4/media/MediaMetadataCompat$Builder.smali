.class public final Landroid/support/v4/media/MediaMetadataCompat$Builder;
.super Ljava/lang/Object;
.source "MediaMetadataCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/MediaMetadataCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 609
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 610
    move-object v1, v0

    new-instance v2, Landroid/os/Bundle;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    .line 611
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/media/MediaMetadataCompat;)V
    .locals 7

    .prologue
    .line 620
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 621
    move-object v2, v0

    new-instance v3, Landroid/os/Bundle;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-static {v5}, Landroid/support/v4/media/MediaMetadataCompat;->access$100(Landroid/support/v4/media/MediaMetadataCompat;)Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, v2, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    .line 622
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/media/MediaMetadataCompat;
    .locals 6

    .prologue
    .line 780
    move-object v0, p0

    new-instance v1, Landroid/support/v4/media/MediaMetadataCompat;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v4/media/MediaMetadataCompat;-><init>(Landroid/os/Bundle;Landroid/support/v4/media/MediaMetadataCompat$1;)V

    move-object v0, v1

    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 8

    .prologue
    .line 764
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 765
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 766
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key cannot be used to put a Bitmap"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 770
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 771
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 9

    .prologue
    .line 715
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 716
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_0

    .line 717
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " key cannot be used to put a long"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 721
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    move-object v5, v1

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 722
    move-object v4, v0

    move-object v0, v4

    return-object v0
.end method

.method public putRating(Ljava/lang/String;Landroid/support/v4/media/RatingCompat;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 8

    .prologue
    .line 739
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 740
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 741
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key cannot be used to put a Rating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 745
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 746
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 8

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 690
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key cannot be used to put a String"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 694
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 695
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method

.method public putText(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/support/v4/media/MediaMetadataCompat$Builder;
    .locals 8

    .prologue
    .line 651
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    invoke-static {}, Landroid/support/v4/media/MediaMetadataCompat;->access$200()Landroid/support/v4/util/ArrayMap;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 653
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " key cannot be used to put a CharSequence"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 657
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/media/MediaMetadataCompat$Builder;->mBundle:Landroid/os/Bundle;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 658
    move-object v3, v0

    move-object v0, v3

    return-object v0
.end method
