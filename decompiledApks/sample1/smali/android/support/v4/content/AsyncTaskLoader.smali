.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 122
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {v2, v3, v4}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 123
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 6

    .prologue
    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 118
    move-object v3, v0

    const-wide/16 v4, -0x2710

    iput-wide v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 127
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 128
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 225
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 227
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 228
    move-object v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 229
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 231
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/AsyncTaskLoader;->deliverCancellation()V

    .line 232
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 234
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 237
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move-object v4, v1

    if-eq v3, v4, :cond_0

    .line 239
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 252
    :goto_0
    return-void

    .line 241
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 245
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/AsyncTaskLoader;->commitContentChanged()V

    .line 246
    move-object v3, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 247
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 249
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 344
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v5, :cond_0

    .line 345
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mTask="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 346
    move-object v5, v3

    const-string v6, " waiting="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v6, v6, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 348
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v5, :cond_1

    .line 349
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mCancellingTask="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 350
    move-object v5, v3

    const-string v6, " waiting="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v6, v6, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    :cond_1
    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    .line 353
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mUpdateThrottle="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    move-object v7, v3

    invoke-static {v5, v6, v7}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 355
    move-object v5, v3

    const-string v6, " mLastLoadCompleteTime="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-object v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v4/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 358
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    .line 360
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 9

    .prologue
    .line 201
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v3, :cond_2

    .line 202
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v3, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v3, :cond_0

    .line 203
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 204
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_0
    move-object v3, v0

    iget-wide v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move-wide v1, v3

    .line 208
    move-wide v3, v1

    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_1

    .line 213
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 214
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move-object v5, v0

    iget-wide v5, v5, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    move-object v7, v0

    iget-wide v7, v7, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v3

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    move-result-object v3

    .line 221
    :cond_2
    goto :goto_0
.end method

.method public isLoadInBackgroundCanceled()Z
    .locals 2

    .prologue
    .line 321
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .locals 4

    .prologue
    .line 156
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_4

    .line 157
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_1

    .line 162
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_0

    .line 163
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 164
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 167
    const/4 v2, 0x0

    move v0, v2

    .line 187
    :goto_0
    return v0

    .line 168
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_2

    .line 172
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 173
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 175
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 177
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v2

    move v1, v2

    .line 179
    move v2, v1

    if-eqz v2, :cond_3

    .line 180
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-object v3, v2, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 181
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 183
    :cond_3
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 184
    move v2, v1

    move v0, v2

    goto :goto_0

    .line 187
    :cond_4
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 198
    return-void
.end method

.method protected onForceLoad()V
    .locals 6

    .prologue
    .line 146
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/content/Loader;->onForceLoad()V

    .line 147
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    move-result v1

    .line 148
    move-object v1, v0

    new-instance v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    iput-object v2, v1, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 150
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 151
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 8

    .prologue
    .line 138
    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 139
    move-wide v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 140
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 142
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    move-object v1, v2

    .line 336
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 337
    move-object v2, v1

    invoke-virtual {v2}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 339
    :cond_0
    return-void
.end method
