.class public Landroid/support/v7/app/NotificationCompat;
.super Landroid/support/v4/app/NotificationCompat;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/NotificationCompat$1;,
        Landroid/support/v7/app/NotificationCompat$MediaStyle;,
        Landroid/support/v7/app/NotificationCompat$LollipopExtender;,
        Landroid/support/v7/app/NotificationCompat$JellybeanExtender;,
        Landroid/support/v7/app/NotificationCompat$IceCreamSandwichExtender;,
        Landroid/support/v7/app/NotificationCompat$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/NotificationCompat;-><init>()V

    .line 166
    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/NotificationCompat;->addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V

    return-void
.end method

.method static synthetic access$500(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v7/app/NotificationCompat;->addMediaStyleToBuilderLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V

    return-void
.end method

.method private static addBigMediaStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 18

    .prologue
    .line 58
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v4, v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v4, :cond_0

    .line 59
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object v3, v4

    .line 60
    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v9, v2

    iget v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object v10, v2

    iget-object v10, v10, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v11, v2

    iget-object v11, v11, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object v12, v2

    iget-boolean v12, v12, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move-object v13, v2

    iget-object v13, v13, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v13, v13, Landroid/app/Notification;->when:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-boolean v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    invoke-static/range {v4 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;ZLandroid/app/PendingIntent;)V

    .line 66
    :cond_0
    return-void
.end method

.method private static addMediaStyleToBuilderIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 19

    .prologue
    .line 45
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    instance-of v4, v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v4, :cond_0

    .line 46
    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;

    check-cast v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object v3, v4

    .line 47
    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;

    move-object v7, v2

    iget-object v7, v7, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;

    move-object v8, v2

    iget-object v8, v8, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;

    move-object v9, v2

    iget v9, v9, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I

    move-object v10, v2

    iget-object v10, v10, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;

    move-object v11, v2

    iget-object v11, v11, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;

    move-object v12, v2

    iget-boolean v12, v12, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z

    move-object v13, v2

    iget-object v13, v13, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;

    iget-wide v13, v13, Landroid/app/Notification;->when:J

    move-object v15, v2

    iget-object v15, v15, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;

    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z

    move/from16 v17, v0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    invoke-static/range {v4 .. v18}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentView(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJLjava/util/List;[IZLandroid/app/PendingIntent;)V

    .line 54
    :cond_0
    return-void
.end method

.method private static addMediaStyleToBuilderLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
    .locals 6

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    if-eqz v3, :cond_0

    .line 36
    move-object v3, v1

    check-cast v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;

    move-object v2, v3

    .line 37
    move-object v3, v0

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    if-eqz v5, :cond_1

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v5

    :goto_0
    invoke-static {v3, v4, v5}, Landroid/support/v7/app/NotificationCompatImpl21;->addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V

    .line 41
    :cond_0
    return-void

    .line 37
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
