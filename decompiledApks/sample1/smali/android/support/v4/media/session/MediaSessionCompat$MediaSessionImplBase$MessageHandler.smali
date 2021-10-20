.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f

.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e

.field private static final MSG_ADJUST_VOLUME:I = 0x10

.field private static final MSG_COMMAND:I = 0xf

.field private static final MSG_CUSTOM_ACTION:I = 0xd

.field private static final MSG_FAST_FORWARD:I = 0x9

.field private static final MSG_MEDIA_BUTTON:I = 0xe

.field private static final MSG_NEXT:I = 0x7

.field private static final MSG_PAUSE:I = 0x5

.field private static final MSG_PLAY:I = 0x1

.field private static final MSG_PLAY_MEDIA_ID:I = 0x2

.field private static final MSG_PLAY_SEARCH:I = 0x3

.field private static final MSG_PLAY_URI:I = 0x12

.field private static final MSG_PREVIOUS:I = 0x8

.field private static final MSG_RATE:I = 0xc

.field private static final MSG_REWIND:I = 0xa

.field private static final MSG_SEEK_TO:I = 0xb

.field private static final MSG_SET_VOLUME:I = 0x11

.field private static final MSG_SKIP_TO_ITEM:I = 0x4

.field private static final MSG_STOP:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;


# direct methods
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
    .locals 5

    .prologue
    .line 1797
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    .line 1798
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1799
    return-void
.end method

.method private onMediaButtonEvent(Landroid/view/KeyEvent;)V
    .locals 11

    .prologue
    .line 1890
    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_1

    .line 1947
    :cond_0
    :goto_0
    return-void

    .line 1893
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v7

    if-nez v7, :cond_3

    const-wide/16 v7, 0x0

    :goto_1
    move-wide v2, v7

    .line 1894
    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 1947
    :cond_2
    :goto_2
    goto :goto_0

    .line 1893
    :cond_3
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v7

    goto :goto_1

    .line 1897
    :sswitch_0
    move-wide v7, v2

    const-wide/16 v9, 0x4

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1898
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto :goto_2

    .line 1903
    :sswitch_1
    move-wide v7, v2

    const-wide/16 v9, 0x2

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1904
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto :goto_2

    .line 1908
    :sswitch_2
    move-wide v7, v2

    const-wide/16 v9, 0x20

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1909
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    goto :goto_2

    .line 1913
    :sswitch_3
    move-wide v7, v2

    const-wide/16 v9, 0x10

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1914
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    goto :goto_2

    .line 1918
    :sswitch_4
    move-wide v7, v2

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1919
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    goto :goto_2

    .line 1923
    :sswitch_5
    move-wide v7, v2

    const-wide/16 v9, 0x40

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1924
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    goto/16 :goto_2

    .line 1928
    :sswitch_6
    move-wide v7, v2

    const-wide/16 v9, 0x8

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 1929
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    goto/16 :goto_2

    .line 1934
    :sswitch_7
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2600(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_3
    move v4, v7

    .line 1936
    move-wide v7, v2

    const-wide/16 v9, 0x204

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    :goto_4
    move v5, v7

    .line 1938
    move-wide v7, v2

    const-wide/16 v9, 0x202

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_5
    move v6, v7

    .line 1940
    move v7, v4

    if-eqz v7, :cond_7

    move v7, v6

    if-eqz v7, :cond_7

    .line 1941
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    goto/16 :goto_2

    .line 1934
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1936
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 1938
    :cond_6
    const/4 v7, 0x0

    goto :goto_5

    .line 1942
    :cond_7
    move v7, v4

    if-nez v7, :cond_2

    move v7, v5

    if-eqz v7, :cond_2

    .line 1943
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    goto/16 :goto_2

    .line 1894
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_4
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_5
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .prologue
    .line 1821
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1887
    :goto_0
    return-void

    .line 1824
    :cond_0
    move-object v5, v1

    iget v5, v5, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1887
    :cond_1
    :goto_1
    goto :goto_0

    .line 1826
    :pswitch_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V

    .line 1827
    goto :goto_1

    .line 1829
    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1830
    goto :goto_1

    .line 1832
    :pswitch_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1833
    goto :goto_1

    .line 1835
    :pswitch_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/net/Uri;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 1836
    goto :goto_1

    .line 1838
    :pswitch_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V

    .line 1839
    goto :goto_1

    .line 1841
    :pswitch_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V

    .line 1842
    goto :goto_1

    .line 1844
    :pswitch_6
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V

    .line 1845
    goto :goto_1

    .line 1847
    :pswitch_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V

    .line 1848
    goto :goto_1

    .line 1850
    :pswitch_8
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V

    .line 1851
    goto/16 :goto_1

    .line 1853
    :pswitch_9
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V

    .line 1854
    goto/16 :goto_1

    .line 1856
    :pswitch_a
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V

    .line 1857
    goto/16 :goto_1

    .line 1859
    :pswitch_b
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V

    .line 1860
    goto/16 :goto_1

    .line 1862
    :pswitch_c
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/support/v4/media/RatingCompat;

    invoke-virtual {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V

    .line 1863
    goto/16 :goto_1

    .line 1865
    :pswitch_d
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    move-object v7, v1

    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1866
    goto/16 :goto_1

    .line 1868
    :pswitch_e
    move-object v5, v1

    iget-object v5, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/view/KeyEvent;

    move-object v2, v5

    .line 1869
    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    .line 1870
    move-object v5, v3

    const-string v6, "android.intent.extra.KEY_EVENT"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v5

    .line 1872
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1873
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;)V

    goto/16 :goto_1

    .line 1877
    :pswitch_f
    move-object v5, v1

    iget-object v5, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;

    move-object v4, v5

    .line 1878
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    invoke-static {v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$2500(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)Landroid/support/v4/media/session/MediaSessionCompat$Callback;

    move-result-object v5

    move-object v6, v4

    iget-object v6, v6, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;

    move-object v7, v4

    iget-object v7, v7, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;

    move-object v8, v4

    iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 1879
    goto/16 :goto_1

    .line 1881
    :pswitch_10
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1700(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    .line 1882
    goto/16 :goto_1

    .line 1884
    :pswitch_11
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->access$1800(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;II)V

    goto/16 :goto_1

    .line 1824
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_3
    .end packed-switch
.end method

.method public post(I)V
    .locals 5

    .prologue
    .line 1812
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V

    .line 1813
    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .locals 6

    .prologue
    .line 1808
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1809
    return-void
.end method

.method public post(ILjava/lang/Object;I)V
    .locals 9

    .prologue
    .line 1816
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    move v6, v3

    const/4 v7, 0x0

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1817
    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1802
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v4, v5

    .line 1803
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1804
    move-object v5, v4

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 1805
    return-void
.end method
