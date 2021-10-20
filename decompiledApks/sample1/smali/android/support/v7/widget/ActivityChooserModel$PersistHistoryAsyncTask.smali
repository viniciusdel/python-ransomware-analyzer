.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActivityChooserModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PersistHistoryAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserModel;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
    .locals 4

    .prologue
    .line 1033
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/support/v7/widget/ActivityChooserModel$1;)V
    .locals 5

    .prologue
    .line 1033
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 1033
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 17

    .prologue
    .line 1038
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    const/4 v12, 0x0

    aget-object v11, v11, v12

    check-cast v11, Ljava/util/List;

    move-object v2, v11

    .line 1039
    move-object v11, v1

    const/4 v12, 0x1

    aget-object v11, v11, v12

    check-cast v11, Ljava/lang/String;

    move-object v3, v11

    .line 1041
    const/4 v11, 0x0

    move-object v4, v11

    .line 1044
    move-object v11, v0

    :try_start_0
    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v11}, Landroid/support/v7/widget/ActivityChooserModel;->access$200(Landroid/support/v7/widget/ActivityChooserModel;)Landroid/content/Context;

    move-result-object v11

    move-object v12, v3

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v4, v11

    .line 1050
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    move-object v5, v11

    .line 1053
    move-object v11, v5

    move-object v12, v4

    const/4 v13, 0x0

    :try_start_1
    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1054
    move-object v11, v5

    const-string v12, "UTF-8"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1055
    move-object v11, v5

    const/4 v12, 0x0

    const-string v13, "historical-records"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1057
    move-object v11, v2

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    move v6, v11

    .line 1058
    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_0

    .line 1059
    move-object v11, v2

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;

    move-object v8, v11

    .line 1060
    move-object v11, v5

    const/4 v12, 0x0

    const-string v13, "historical-record"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1061
    move-object v11, v5

    const/4 v12, 0x0

    const-string v13, "activity"

    move-object v14, v8

    iget-object v14, v14, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;

    invoke-virtual {v14}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1063
    move-object v11, v5

    const/4 v12, 0x0

    const-string v13, "time"

    move-object v14, v8

    iget-wide v14, v14, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1064
    move-object v11, v5

    const/4 v12, 0x0

    const-string v13, "weight"

    move-object v14, v8

    iget v14, v14, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F

    invoke-static {v14}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1065
    move-object v11, v5

    const/4 v12, 0x0

    const-string v13, "historical-record"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 1058
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v11

    move-object v5, v11

    .line 1046
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v5

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v11

    .line 1047
    const/4 v11, 0x0

    move-object v0, v11

    .line 1093
    :goto_1
    return-object v0

    .line 1071
    :cond_0
    move-object v11, v5

    const/4 v12, 0x0

    :try_start_2
    const-string v13, "historical-records"

    invoke-interface {v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 1072
    move-object v11, v5

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1084
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    move-result v11

    .line 1085
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1087
    move-object v11, v4

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1093
    :cond_1
    :goto_2
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1

    .line 1088
    :catch_1
    move-exception v11

    move-object v6, v11

    .line 1090
    goto :goto_2

    .line 1077
    :catch_2
    move-exception v11

    move-object v6, v11

    .line 1078
    :try_start_4
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v11

    .line 1084
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    move-result v11

    .line 1085
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1087
    move-object v11, v4

    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1090
    goto :goto_2

    .line 1088
    :catch_3
    move-exception v11

    move-object v6, v11

    .line 1090
    goto :goto_2

    .line 1079
    :catch_4
    move-exception v11

    move-object v6, v11

    .line 1080
    :try_start_6
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v11

    .line 1084
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    move-result v11

    .line 1085
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1087
    move-object v11, v4

    :try_start_7
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1090
    goto :goto_2

    .line 1088
    :catch_5
    move-exception v11

    move-object v6, v11

    .line 1090
    goto/16 :goto_2

    .line 1081
    :catch_6
    move-exception v11

    move-object v6, v11

    .line 1082
    :try_start_8
    invoke-static {}, Landroid/support/v7/widget/ActivityChooserModel;->access$300()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error writing historical recrod file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    invoke-static {v13}, Landroid/support/v7/widget/ActivityChooserModel;->access$400(Landroid/support/v7/widget/ActivityChooserModel;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v13, v6

    invoke-static {v11, v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v11

    .line 1084
    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    move-result v11

    .line 1085
    move-object v11, v4

    if-eqz v11, :cond_1

    .line 1087
    move-object v11, v4

    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 1090
    goto/16 :goto_2

    .line 1088
    :catch_7
    move-exception v11

    move-object v6, v11

    .line 1090
    goto/16 :goto_2

    .line 1084
    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v0

    iget-object v11, v11, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Landroid/support/v7/widget/ActivityChooserModel;->access$502(Landroid/support/v7/widget/ActivityChooserModel;Z)Z

    move-result v11

    .line 1085
    move-object v11, v4

    if-eqz v11, :cond_2

    .line 1087
    move-object v11, v4

    :try_start_a
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1090
    :cond_2
    :goto_3
    move-object v11, v9

    throw v11

    .line 1088
    :catch_8
    move-exception v11

    move-object v10, v11

    goto :goto_3
.end method
