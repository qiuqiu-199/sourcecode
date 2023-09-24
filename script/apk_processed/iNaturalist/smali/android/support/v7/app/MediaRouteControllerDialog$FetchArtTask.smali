.class Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;
.super Landroid/os/AsyncTask;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FetchArtTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field mBackgroundColor:I

.field final mIconBitmap:Landroid/graphics/Bitmap;

.field final mIconUri:Landroid/net/Uri;

.field final synthetic this$0:Landroid/support/v7/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroid/support/v7/app/MediaRouteControllerDialog;)V
    .locals 2

    .line 1241
    iput-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1242
    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$2800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$2800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1243
    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$2800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$2800(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/MediaDescriptionCompat;->getIconUri()Landroid/net/Uri;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    return-void
.end method

.method private isIconChanged()Z
    .locals 3

    .line 1337
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 1339
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4100(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4300(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.resource"

    .line 1348
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "content"

    .line 1349
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file"

    .line 1350
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1353
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1354
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    .line 1355
    invoke-static {}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4400()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 1356
    invoke-static {}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4400()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 1357
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_1

    .line 1351
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$3200(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 1359
    :cond_2
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    :goto_2
    return-object p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1257
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1258
    iget-object v2, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_4

    .line 1259
    :cond_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    if-eqz p1, :cond_c

    .line 1262
    :try_start_0
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_2

    :try_start_1
    const-string v3, "MediaRouteCtrlDialog"

    .line 1263
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_1

    .line 1298
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-object v2

    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 1267
    :cond_2
    :try_start_3
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1268
    iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1269
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1270
    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v4, :cond_9

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez v4, :cond_3

    goto :goto_1

    .line 1275
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 1278
    :catch_2
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1279
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->openInputStreamByScheme(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v4, :cond_5

    :try_start_6
    const-string p1, "MediaRouteCtrlDialog"

    .line 1280
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v4, :cond_4

    .line 1298
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    :cond_4
    return-object v2

    :catchall_0
    move-exception v0

    move-object p1, v4

    goto :goto_3

    :catch_4
    move-exception v3

    move-object p1, v4

    goto :goto_2

    :cond_5
    move-object p1, v4

    .line 1285
    :goto_0
    :try_start_8
    iput-boolean v0, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1286
    iget-object v4, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v4, v5, v6}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$3800(Landroid/support/v7/app/MediaRouteControllerDialog;II)I

    move-result v4

    .line 1287
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    .line 1288
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1289
    invoke-virtual {p0}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->isCancelled()Z

    move-result v4
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_7

    if-eqz p1, :cond_6

    .line 1298
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :catch_5
    :cond_6
    return-object v2

    .line 1292
    :cond_7
    :try_start_a
    invoke-static {p1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz p1, :cond_8

    .line 1298
    :try_start_b
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    :cond_8
    move-object v2, v3

    goto :goto_4

    :cond_9
    :goto_1
    if-eqz p1, :cond_a

    :try_start_c
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :catch_7
    :cond_a
    return-object v2

    :catchall_1
    move-exception v0

    move-object p1, v2

    goto :goto_3

    :catch_8
    move-exception v3

    move-object p1, v2

    :goto_2
    :try_start_d
    const-string v4, "MediaRouteCtrlDialog"

    .line 1294
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to open: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz p1, :cond_c

    .line 1298
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    goto :goto_4

    :catch_9
    nop

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz p1, :cond_b

    :try_start_f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 1300
    :catch_a
    :cond_b
    throw v0

    :cond_c
    :goto_4
    if-eqz v2, :cond_e

    .line 1304
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ge p1, v3, :cond_e

    .line 1306
    new-instance p1, Landroid/support/v7/graphics/Palette$Builder;

    invoke-direct {p1, v2}, Landroid/support/v7/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/graphics/Palette$Builder;->maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object p1

    .line 1307
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_5

    .line 1308
    :cond_d
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/graphics/Palette$Swatch;

    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v0

    :goto_5
    iput v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    :cond_e
    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1236
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 2

    .line 1315
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$3902(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;)Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    return-void
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1320
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$3902(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;)Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;

    .line 1321
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4000(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4100(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    if-eq v0, v1, :cond_1

    .line 1322
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4002(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1323
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    iget-object v1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mIconUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4102(Landroid/support/v7/app/MediaRouteControllerDialog;Landroid/net/Uri;)Landroid/net/Uri;

    .line 1325
    iget-object v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4200(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1326
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    invoke-static {p1}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$4200(Landroid/support/v7/app/MediaRouteControllerDialog;)Landroid/widget/ImageView;

    move-result-object p1

    iget v0, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1327
    iget-object p1, p0, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->this$0:Landroid/support/v7/app/MediaRouteControllerDialog;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v7/app/MediaRouteControllerDialog;->access$900(Landroid/support/v7/app/MediaRouteControllerDialog;Z)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1236
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1248
    invoke-direct {p0}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->isIconChanged()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1250
    invoke-virtual {p0, v0}, Landroid/support/v7/app/MediaRouteControllerDialog$FetchArtTask;->cancel(Z)Z

    :cond_0
    return-void
.end method
