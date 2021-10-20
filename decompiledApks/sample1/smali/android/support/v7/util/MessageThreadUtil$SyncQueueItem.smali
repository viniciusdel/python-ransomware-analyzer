.class Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
.super Ljava/lang/Object;
.source "MessageThreadUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/MessageThreadUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SyncQueueItem"
.end annotation


# static fields
.field private static sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

.field private static final sPoolLock:Ljava/lang/Object;


# instance fields
.field public arg1:I

.field public arg2:I

.field public arg3:I

.field public arg4:I

.field public arg5:I

.field public data:Ljava/lang/Object;

.field private next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

.field public what:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 2

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v0, v2

    return-object v0
.end method

.method static obtainMessage(III)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 10

    .prologue
    .line 221
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 13

    .prologue
    .line 200
    move v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    sget-object v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    move-object v7, v11

    monitor-enter v10

    .line 202
    :try_start_0
    sget-object v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-nez v10, :cond_0

    .line 203
    new-instance v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;-><init>()V

    move-object v8, v10

    .line 209
    :goto_0
    move-object v10, v8

    move v11, v0

    iput v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    .line 210
    move-object v10, v8

    move v11, v1

    iput v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    .line 211
    move-object v10, v8

    move v11, v2

    iput v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    .line 212
    move-object v10, v8

    move v11, v3

    iput v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    .line 213
    move-object v10, v8

    move v11, v4

    iput v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    .line 214
    move-object v10, v8

    move v11, v5

    iput v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    .line 215
    move-object v10, v8

    move-object v11, v6

    iput-object v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 216
    move-object v10, v8

    move-object v11, v7

    monitor-exit v11

    move-object v0, v10

    return-object v0

    .line 205
    :cond_0
    sget-object v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-object v8, v10

    .line 206
    sget-object v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iget-object v10, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    sput-object v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 207
    move-object v10, v8

    const/4 v11, 0x0

    iput-object v11, v10, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    goto :goto_0

    .line 217
    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v7

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v9

    throw v10
.end method

.method static obtainMessage(IILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;
    .locals 10

    .prologue
    .line 225
    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v0

    move v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v2

    invoke-static/range {v3 .. v9}, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->obtainMessage(IIIIIILjava/lang/Object;)Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method recycle()V
    .locals 13

    .prologue
    .line 187
    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 188
    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    const/4 v9, 0x0

    move-object v11, v8

    move v12, v9

    move v8, v12

    move-object v9, v11

    move v10, v12

    iput v10, v9, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg5:I

    move-object v11, v7

    move v12, v8

    move v7, v12

    move-object v8, v11

    move v9, v12

    iput v9, v8, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg4:I

    move-object v11, v6

    move v12, v7

    move v6, v12

    move-object v7, v11

    move v8, v12

    iput v8, v7, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg3:I

    move-object v11, v5

    move v12, v6

    move v5, v12

    move-object v6, v11

    move v7, v12

    iput v7, v6, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg2:I

    move-object v11, v4

    move v12, v5

    move v4, v12

    move-object v5, v11

    move v6, v12

    iput v6, v5, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->arg1:I

    iput v4, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->what:I

    .line 189
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->data:Ljava/lang/Object;

    .line 190
    sget-object v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPoolLock:Ljava/lang/Object;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v1, v4

    monitor-enter v3

    .line 191
    :try_start_0
    sget-object v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    if-eqz v3, :cond_0

    .line 192
    move-object v3, v0

    sget-object v4, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    iput-object v4, v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->next:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 194
    :cond_0
    move-object v3, v0

    sput-object v3, Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;->sPool:Landroid/support/v7/util/MessageThreadUtil$SyncQueueItem;

    .line 195
    move-object v3, v1

    monitor-exit v3

    .line 196
    return-void

    .line 195
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    throw v3
.end method
