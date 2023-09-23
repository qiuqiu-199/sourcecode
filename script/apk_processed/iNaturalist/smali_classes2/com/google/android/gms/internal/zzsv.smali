.class public Lcom/google/android/gms/internal/zzsv;
.super Ljava/lang/Object;


# direct methods
.method public static version()I
    .locals 2

    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Invalid version number"

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zztc;->zzf(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static zzca(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/zzsv;->version()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    const/4 p0, 0x1

    invoke-virtual {v0, p0, p0}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, p0, p0}, Ljava/io/File;->setWritable(ZZ)Z

    return p0
.end method
