.class abstract Lcom/google/android/gms/internal/zzso;
.super Lcom/google/android/gms/internal/zzrz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzso$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/zzsn;",
        ">",
        "Lcom/google/android/gms/internal/zzrz;"
    }
.end annotation


# instance fields
.field zzaeY:Lcom/google/android/gms/internal/zzso$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzso$zza<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;Lcom/google/android/gms/internal/zzso$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzsc;",
            "Lcom/google/android/gms/internal/zzso$zza<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzso;->zzaeY:Lcom/google/android/gms/internal/zzso$zza;

    return-void
.end method

.method private zza(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/internal/zzsn;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/XmlResourceParser;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screenname"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzso;->zzaeY:Lcom/google/android/gms/internal/zzso$zza;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzso$zza;->zzp(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzso;->zzaeY:Lcom/google/android/gms/internal/zzso$zza;

    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/zzso$zza;->zzq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v1, "bool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v2, :cond_3

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzso;->zzaeY:Lcom/google/android/gms/internal/zzso$zza;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/zzso$zza;->zze(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v2, "Error parsing bool configuration value"

    :goto_1
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/internal/zzso;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v1, "integer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "name"

    invoke-interface {p1, v2, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v2, :cond_3

    :try_start_3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzso;->zzaeY:Lcom/google/android/gms/internal/zzso$zza;

    invoke-interface {v3, v0, v2}, Lcom/google/android/gms/internal/zzso$zza;->zzd(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    const-string v2, "Error parsing int configuration value"

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception p1

    const-string v0, "Error parsing tracker configuration file"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzso;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzso;->zzaeY:Lcom/google/android/gms/internal/zzso$zza;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzso$zza;->zzoV()Lcom/google/android/gms/internal/zzsn;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public zzaI(I)Lcom/google/android/gms/internal/zzsn;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzso;->zznQ()Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zzod()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzso;->zza(Landroid/content/res/XmlResourceParser;)Lcom/google/android/gms/internal/zzsn;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "inflate() called with unknown resourceId"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzso;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method