.class Lorg/inaturalist/android/INaturalistApp$6;
.super Ljava/lang/Object;
.source "INaturalistApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/inaturalist/android/INaturalistApp;->downloadFile(Ljava/lang/String;Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/inaturalist/android/INaturalistApp;

.field final synthetic val$downloadUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/inaturalist/android/INaturalistApp;Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lorg/inaturalist/android/INaturalistApp$6;->this$0:Lorg/inaturalist/android/INaturalistApp;

    iput-object p2, p0, Lorg/inaturalist/android/INaturalistApp$6;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 864
    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lorg/inaturalist/android/INaturalistApp$6;->val$downloadUrl:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 865
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 866
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 867
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v1

    .line 870
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v3, 0x2000

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 873
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/inaturalist/android/INaturalistApp$6;->this$0:Lorg/inaturalist/android/INaturalistApp;

    invoke-virtual {v4}, Lorg/inaturalist/android/INaturalistApp;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static {v0, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 875
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x400

    .line 877
    new-array v0, v0, [B

    const-wide/16 v3, 0x0

    .line 883
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    int-to-long v6, v5

    add-long v11, v3, v6

    const/4 v3, 0x0

    .line 885
    invoke-virtual {v10, v0, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 887
    iget-object v3, p0, Lorg/inaturalist/android/INaturalistApp$6;->this$0:Lorg/inaturalist/android/INaturalistApp;

    invoke-static {v3}, Lorg/inaturalist/android/INaturalistApp;->access$100(Lorg/inaturalist/android/INaturalistApp;)Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;

    move-result-object v3

    int-to-long v6, v1

    move-wide v4, v11

    move-object v8, v9

    invoke-interface/range {v3 .. v8}, Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;->onDownloadProgress(JJLjava/lang/String;)Z

    move-wide v3, v11

    goto :goto_0

    .line 891
    :cond_0
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    .line 894
    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    .line 895
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 898
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 899
    iget-object v0, p0, Lorg/inaturalist/android/INaturalistApp$6;->this$0:Lorg/inaturalist/android/INaturalistApp;

    invoke-static {v0}, Lorg/inaturalist/android/INaturalistApp;->access$100(Lorg/inaturalist/android/INaturalistApp;)Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;

    move-result-object v0

    invoke-interface {v0}, Lorg/inaturalist/android/INaturalistApp$OnDownloadFileProgress;->onDownloadError()V

    :goto_1
    return-void
.end method
