.class Lcom/google/android/gms/internal/zzbqp$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqq$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbqp;->zzA(Lcom/google/android/gms/internal/zzbph;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzbqq$zza<",
        "Ljava/util/Map<",
        "Lcom/google/android/gms/internal/zzbrb;",
        "Lcom/google/android/gms/internal/zzbqo;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzchw:Lcom/google/android/gms/internal/zzbqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbqp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqp$5;->zzchw:Lcom/google/android/gms/internal/zzbqp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/util/Map;

    check-cast p3, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzbqp$5;->zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/zzbph;Ljava/util/Map;Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbph;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/zzbrb;",
            "Lcom/google/android/gms/internal/zzbqo;",
            ">;",
            "Ljava/lang/Void;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/zzbqo;

    iget-boolean p3, p2, Lcom/google/android/gms/internal/zzbqo;->zzcho:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/google/android/gms/internal/zzbqp$5;->zzchw:Lcom/google/android/gms/internal/zzbqp;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbqo;->zzZJ()Lcom/google/android/gms/internal/zzbqo;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzbqp;->zza(Lcom/google/android/gms/internal/zzbqp;Lcom/google/android/gms/internal/zzbqo;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
