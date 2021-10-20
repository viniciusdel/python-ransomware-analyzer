.class Lcom/android/tencent/zdevs/bah/MainActivity$100000000;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/MainActivity;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/MainActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/MainActivity$100000000;->this$0:Lcom/android/tencent/zdevs/bah/MainActivity;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/MainActivity$100000000;)Lcom/android/tencent/zdevs/bah/MainActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/MainActivity$100000000;->this$0:Lcom/android/tencent/zdevs/bah/MainActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    sget-object v2, Lcom/android/tencent/zdevs/bah/MainActivity;->fi:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/tencent/zdevs/bah/MainActivity;->m:Ljava/lang/String;

    const/4 v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/MainActivity$100000000;->this$0:Lcom/android/tencent/zdevs/bah/MainActivity;

    invoke-static {v2, v3, v4, v5}, Lcom/android/tencent/zdevs/bah/sss;->deleteDir(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method
