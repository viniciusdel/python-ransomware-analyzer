.class Landroid/support/design/widget/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/SnackbarManager$SnackbarRecord;,
        Landroid/support/design/widget/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static sSnackbarManager:Landroid/support/design/widget/SnackbarManager;


# instance fields
.field private mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v1, v0

    new-instance v2, Ljava/lang/Object;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    .line 52
    move-object v1, v0

    new-instance v2, Landroid/os/Handler;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    new-instance v5, Landroid/support/design/widget/SnackbarManager$1;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/support/design/widget/SnackbarManager$1;-><init>(Landroid/support/design/widget/SnackbarManager;)V

    invoke-direct {v3, v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, v1, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$000(Landroid/support/design/widget/SnackbarManager;Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/design/widget/SnackbarManager;->handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    return-void
.end method

.method private cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z
    .locals 6

    .prologue
    .line 198
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-static {v4}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$200(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/SnackbarManager$Callback;

    move-object v3, v4

    .line 199
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 200
    move-object v4, v3

    move v5, v2

    invoke-interface {v4, v5}, Landroid/support/design/widget/SnackbarManager$Callback;->dismiss(I)V

    .line 201
    const/4 v4, 0x1

    move v0, v4

    .line 203
    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method static getInstance()Landroid/support/design/widget/SnackbarManager;
    .locals 3

    .prologue
    .line 38
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Landroid/support/design/widget/SnackbarManager;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/design/widget/SnackbarManager;-><init>()V

    sput-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    .line 41
    :cond_0
    sget-object v0, Landroid/support/design/widget/SnackbarManager;->sSnackbarManager:Landroid/support/design/widget/SnackbarManager;

    return-object v0
.end method

.method private handleTimeout(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 8

    .prologue
    .line 231
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v2, v5

    monitor-enter v4

    .line 232
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move-object v5, v1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    .line 233
    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v4

    .line 235
    :cond_1
    move-object v4, v2

    monitor-exit v4

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method private isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 4

    .prologue
    .line 207
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 4

    .prologue
    .line 211
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V
    .locals 7

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 228
    :goto_0
    return-void

    .line 220
    :cond_0
    const/16 v3, 0xabe

    move v2, v3

    .line 221
    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v3

    if-lez v3, :cond_2

    .line 222
    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v3

    move v2, v3

    .line 226
    :cond_1
    :goto_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 227
    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move v5, v2

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v3

    .line 228
    goto :goto_0

    .line 223
    :cond_2
    move-object v3, v1

    invoke-static {v3}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 224
    const/16 v3, 0x5dc

    move v2, v3

    goto :goto_1
.end method

.method private showNextSnackbarLocked()V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v2, :cond_0

    .line 184
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    iput-object v3, v2, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 185
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 187
    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-static {v2}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$200(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/SnackbarManager$Callback;

    move-object v1, v2

    .line 188
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 189
    move-object v2, v1

    invoke-interface {v2}, Landroid/support/design/widget/SnackbarManager$Callback;->show()V

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_0
.end method


# virtual methods
.method public cancelTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 142
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 145
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 146
    return-void

    .line 145
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public dismiss(Landroid/support/design/widget/SnackbarManager$Callback;I)V
    .locals 9

    .prologue
    .line 103
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v3, v6

    monitor-enter v5

    .line 104
    move-object v5, v0

    move-object v6, v1

    :try_start_0
    invoke-direct {v5, v6}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 105
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v5

    .line 109
    :cond_0
    :goto_0
    move-object v5, v3

    monitor-exit v5

    .line 110
    return-void

    .line 106
    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move v7, v2

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v5

    goto :goto_0

    .line 109
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

.method public isCurrent(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 7

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 158
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    move-object v5, v2

    monitor-exit v5

    move v0, v4

    return v0

    .line 159
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public isCurrentOrNext(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 7

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 164
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move-object v5, v2

    monitor-exit v5

    move v0, v4

    return v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public onDismissed(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 118
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 121
    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v4, :cond_0

    .line 122
    move-object v4, v0

    invoke-direct {v4}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 125
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public onShown(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 133
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 134
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 137
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public restoreTimeout(Landroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 7

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 150
    move-object v4, v0

    move-object v5, v1

    :try_start_0
    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v4, v5}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 153
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    throw v4
.end method

.method public show(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mLock:Ljava/lang/Object;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v3, v6

    monitor-enter v5

    .line 72
    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-direct {v5, v6}, Landroid/support/design/widget/SnackbarManager;->isCurrentSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 74
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move v6, v1

    invoke-static {v5, v6}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$102(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)I

    move-result v5

    .line 78
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mHandler:Landroid/os/Handler;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 79
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    invoke-direct {v5, v6}, Landroid/support/design/widget/SnackbarManager;->scheduleTimeoutLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)V

    .line 80
    move-object v5, v3

    monitor-exit v5

    .line 100
    :goto_0
    return-void

    .line 81
    :cond_0
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Landroid/support/design/widget/SnackbarManager;->isNextSnackbarLocked(Landroid/support/design/widget/SnackbarManager$Callback;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move v6, v1

    invoke-static {v5, v6}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->access$102(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)I

    move-result v5

    .line 89
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    const/4 v7, 0x4

    invoke-direct {v5, v6, v7}, Landroid/support/design/widget/SnackbarManager;->cancelSnackbarLocked(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 92
    move-object v5, v3

    monitor-exit v5

    goto :goto_0

    .line 86
    :cond_1
    move-object v5, v0

    new-instance v6, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;-><init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V

    iput-object v6, v5, Landroid/support/design/widget/SnackbarManager;->mNextSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    goto :goto_1

    .line 99
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5

    .line 95
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    :try_start_1
    iput-object v6, v5, Landroid/support/design/widget/SnackbarManager;->mCurrentSnackbar:Landroid/support/design/widget/SnackbarManager$SnackbarRecord;

    .line 97
    move-object v5, v0

    invoke-direct {v5}, Landroid/support/design/widget/SnackbarManager;->showNextSnackbarLocked()V

    .line 99
    move-object v5, v3

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    goto :goto_0
.end method
