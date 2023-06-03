.class Lcom/google/android/gms/internal/zzboj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbot$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzboj$zzc;,
        Lcom/google/android/gms/internal/zzboj$zza;,
        Lcom/google/android/gms/internal/zzboj$zzb;
    }
.end annotation


# static fields
.field private static zzcbr:J


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private zzcbs:Lcom/google/android/gms/internal/zzbon;

.field private zzcbt:Lcom/google/android/gms/internal/zzbot;

.field private zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

.field private zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Lcom/google/android/gms/internal/zzboj$zza;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/gms/internal/zzboj;->zzcbr:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzboj;->zzcbr:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboj;->zzcbs:Lcom/google/android/gms/internal/zzbon;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    new-instance p4, Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXr()Lcom/google/android/gms/internal/zzbro;

    move-result-object v2

    const-string v3, "Connection"

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "conn_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p4, v2, v3, v0}, Lcom/google/android/gms/internal/zzbrn;-><init>(Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    sget-object p4, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbz:Lcom/google/android/gms/internal/zzboj$zzc;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    new-instance p4, Lcom/google/android/gms/internal/zzbot;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbot;-><init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Lcom/google/android/gms/internal/zzbot$zza;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    return-void
.end method

.method private zzau(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "received data message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zzau(Ljava/util/Map;)V

    return-void
.end method

.method private zzav(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Got control message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    const-string v2, "s"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboj;->zziH(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_2
    const-string v2, "r"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboj;->zziI(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    const-string v2, "h"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboj;->zzaw(Ljava/util/Map;)V

    goto/16 :goto_4

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Ignoring unknown control message: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Got invalid control message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to parse control message: "

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_9
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    :cond_b
    :goto_4
    return-void
.end method

.method private zzaw(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "h"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/zzboj$zza;->zziJ(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v3, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbz:Lcom/google/android/gms/internal/zzboj$zzc;

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/zzboj;->zzi(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private zzb(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbA:Lcom/google/android/gms/internal/zzboj$zzc;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string p2, "Tried to send on an unconnected connection"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v0, "Sending data (contents hidden)"

    new-array v1, v2, [Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v0, "Sending data: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    goto :goto_0

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzbot;->send(Ljava/util/Map;)V

    :goto_2
    return-void
.end method

.method private zzi(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "realtime connection established"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbA:Lcom/google/android/gms/internal/zzboj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzboj$zza;->zzj(JLjava/lang/String;)V

    return-void
.end method

.method private zziH(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Connection shutdown command received. Shutting down..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zziK(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    return-void
.end method

.method private zziI(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcbs:Lcom/google/android/gms/internal/zzbon;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbon;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Got a reset; killing connection to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; Updating internalHost to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zziJ(Ljava/lang/String;)V

    sget-object p1, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbw:Lcom/google/android/gms/internal/zzboj$zzb;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzboj;->zza(Lcom/google/android/gms/internal/zzboj$zzb;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbx:Lcom/google/android/gms/internal/zzboj$zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zza(Lcom/google/android/gms/internal/zzboj$zzb;)V

    return-void
.end method

.method public open()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Opening a connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbot;->open()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzboj$zzb;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbB:Lcom/google/android/gms/internal/zzboj$zzc;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "closing realtime connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbB:Lcom/google/android/gms/internal/zzboj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbot;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zzb(Lcom/google/android/gms/internal/zzboj$zzb;)V

    :cond_2
    return-void
.end method

.method public zza(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzboj;->zzb(Ljava/util/Map;Z)V

    return-void
.end method

.method public zzat(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "t"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboj;->zzau(Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_0
    const-string v2, "c"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "d"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzboj;->zzav(Ljava/util/Map;)V

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Ignoring unknown server message type: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to parse server message: missing message type:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to parse server message: "

    invoke-virtual {p1}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    :cond_8
    :goto_3
    return-void
.end method

.method public zzba(Z)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbz:Lcom/google/android/gms/internal/zzboj$zzc;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Realtime connection failed"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Realtime connection lost"

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    return-void
.end method
