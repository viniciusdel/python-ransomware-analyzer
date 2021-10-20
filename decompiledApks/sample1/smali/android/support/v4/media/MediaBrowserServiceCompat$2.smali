.class Landroid/support/v4/media/MediaBrowserServiceCompat$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/MediaBrowserServiceCompat;->notifyChildrenChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

.field final synthetic val$parentId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->val$parentId:Ljava/lang/String;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 420
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move-object v2, v4

    .line 421
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    invoke-static {v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$100(Landroid/support/v4/media/MediaBrowserServiceCompat;)Landroid/support/v4/util/ArrayMap;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;

    move-object v3, v4

    .line 422
    move-object v4, v3

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashSet;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->val$parentId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 423
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/media/MediaBrowserServiceCompat$2;->val$parentId:Ljava/lang/String;

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat;->access$700(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;)V

    .line 425
    :cond_0
    goto :goto_0

    .line 426
    :cond_1
    return-void
.end method
