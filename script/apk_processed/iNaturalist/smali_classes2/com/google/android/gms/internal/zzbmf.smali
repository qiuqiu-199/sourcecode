.class public Lcom/google/android/gms/internal/zzbmf;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc<",
        "Lcom/google/android/gms/internal/zzbmv;",
        ">;"
    }
.end annotation


# instance fields
.field private zzbYe:Lcom/google/android/gms/internal/zzbuk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbuk;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzbuk;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzbuk;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbmv;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbuk;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadL()Lcom/google/android/gms/internal/zzbwj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbmv;->zzWk()Ljava/util/List;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadM()Lcom/google/android/gms/internal/zzbwj;

    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/zzbmv;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbmf;->zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbmv;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbmf;->zzd(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbmv;

    move-result-object p1

    return-object p1
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbmv;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbwi;->zzcsI:Lcom/google/android/gms/internal/zzbwi;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbmv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmv;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbmf;->zzbYe:Lcom/google/android/gms/internal/zzbuk;

    const-class v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzbuk;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbmv;->zzWk()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    return-object v0
.end method
