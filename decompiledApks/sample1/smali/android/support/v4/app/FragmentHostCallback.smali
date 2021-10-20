.class public abstract Landroid/support/v4/app/FragmentHostCallback;
.super Landroid/support/v4/app/FragmentContainer;
.source "FragmentHostCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/app/FragmentContainer;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedForLoaderManager:Z

.field final mContext:Landroid/content/Context;

.field final mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field private final mHandler:Landroid/os/Handler;

.field private mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field private mLoadersStarted:Z

.field private mRetainLoaders:Z

.field final mWindowAnimations:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    .line 44
    move-object v5, v0

    new-instance v6, Landroid/support/v4/app/FragmentManagerImpl;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 65
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    .line 66
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    .line 67
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    .line 68
    move-object v5, v0

    move v6, v4

    iput v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 9

    .prologue
    .line 56
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const/4 v5, 0x0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 61
    return-void
.end method


# virtual methods
.method doLoaderDestroy()V
    .locals 2

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 258
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 259
    goto :goto_0
.end method

.method doLoaderRetain()V
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 252
    goto :goto_0
.end method

.method doLoaderStart()V
    .locals 6

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-eqz v1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 213
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 215
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 216
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 224
    :cond_1
    :goto_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 225
    goto :goto_0

    .line 217
    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1

    .line 218
    move-object v1, v0

    move-object v2, v0

    const-string v3, "(root)"

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 220
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    iget-boolean v1, v1, Landroid/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v1, :cond_1

    .line 221
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    goto :goto_1
.end method

.method doLoaderStop(Z)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    .line 231
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-nez v2, :cond_0

    .line 245
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    if-nez v2, :cond_1

    .line 236
    goto :goto_0

    .line 238
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    .line 240
    move v2, v1

    if-eqz v2, :cond_2

    .line 241
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 245
    :goto_1
    goto :goto_0

    .line 243
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_1
.end method

.method dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 324
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mLoadersStarted="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 325
    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 326
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_0

    .line 327
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "Loader Manager "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 328
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 329
    move-object v5, v3

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 332
    :cond_0
    return-void
.end method

.method getActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mActivity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mHandler:Landroid/os/Handler;

    move-object v0, v1

    return-object v0
.end method

.method getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;
    .locals 11

    .prologue
    .line 277
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-nez v5, :cond_0

    .line 278
    move-object v5, v0

    new-instance v6, Landroid/support/v4/util/SimpleArrayMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v6, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 280
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v4, v5

    .line 281
    move-object v5, v4

    if-nez v5, :cond_2

    .line 282
    move v5, v3

    if-eqz v5, :cond_1

    .line 283
    new-instance v5, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;-><init>(Ljava/lang/String;Landroid/support/v4/app/FragmentHostCallback;Z)V

    move-object v4, v5

    .line 284
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 289
    :cond_1
    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 287
    :cond_2
    move-object v5, v4

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/LoaderManagerImpl;->updateHostController(Landroid/support/v4/app/FragmentHostCallback;)V

    goto :goto_0
.end method

.method getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
    .locals 6

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 184
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    .line 188
    :goto_0
    return-object v0

    .line 186
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mCheckedForLoaderManager:Z

    .line 187
    move-object v1, v0

    move-object v2, v0

    const-string v3, "(root)"

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/FragmentHostCallback;->mLoadersStarted:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 188
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method getRetainLoaders()Z
    .locals 2

    .prologue
    .line 206
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mRetainLoaders:Z

    move v0, v1

    return v0
.end method

.method inactivateFragment(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v3, :cond_0

    .line 194
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/LoaderManagerImpl;

    move-object v2, v3

    .line 195
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-boolean v3, v3, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v3, :cond_0

    .line 196
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 197
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 200
    :cond_0
    return-void
.end method

.method onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 203
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 158
    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public abstract onGetHost()Ljava/lang/Object;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    move-object v0, v1

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mWindowAnimations:I

    move v0, v1

    return v0
.end method

.method public onHasView()Z
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 2

    .prologue
    .line 145
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 3

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 138
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 8

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 119
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentHostCallback;->mContext:Landroid/content/Context;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method reportLoaderStart()V
    .locals 9

    .prologue
    .line 262
    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v5, :cond_1

    .line 263
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v5}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v5

    move v1, v5

    .line 264
    move v5, v1

    new-array v5, v5, [Landroid/support/v4/app/LoaderManagerImpl;

    move-object v2, v5

    .line 265
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_0
    move v5, v3

    if-ltz v5, :cond_0

    .line 266
    move-object v5, v2

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move v8, v3

    invoke-virtual {v7, v8}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v7, v5, v6

    .line 265
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 268
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move v6, v1

    if-ge v5, v6, :cond_1

    .line 269
    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 270
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->finishRetain()V

    .line 271
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 268
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 274
    :cond_1
    return-void
.end method

.method restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    .line 321
    return-void
.end method

.method retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .prologue
    .line 293
    move-object v0, p0

    const/4 v6, 0x0

    move v1, v6

    .line 294
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    if-eqz v6, :cond_2

    .line 297
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v6}, Landroid/support/v4/util/SimpleArrayMap;->size()I

    move-result v6

    move v2, v6

    .line 298
    move v6, v2

    new-array v6, v6, [Landroid/support/v4/app/LoaderManagerImpl;

    move-object v3, v6

    .line 299
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    :goto_0
    move v6, v4

    if-ltz v6, :cond_0

    .line 300
    move-object v6, v3

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move v9, v4

    invoke-virtual {v8, v9}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/LoaderManagerImpl;

    aput-object v8, v6, v7

    .line 299
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 302
    :cond_0
    const/4 v6, 0x0

    move v4, v6

    :goto_1
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 303
    move-object v6, v3

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 304
    move-object v6, v5

    iget-boolean v6, v6, Landroid/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v6, :cond_1

    .line 305
    const/4 v6, 0x1

    move v1, v6

    .line 302
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 307
    :cond_1
    move-object v6, v5

    invoke-virtual {v6}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 308
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v7, v5

    iget-object v7, v7, Landroid/support/v4/app/LoaderManagerImpl;->mWho:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    .line 313
    :cond_2
    move v6, v1

    if-eqz v6, :cond_3

    .line 314
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentHostCallback;->mAllLoaderManagers:Landroid/support/v4/util/SimpleArrayMap;

    move-object v0, v6

    .line 316
    :goto_3
    return-object v0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_3
.end method
