.class public Lcom/google/android/gms/nearby/messages/Message;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/nearby/messages/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CONTENT_SIZE_BYTES:I = 0x19000

.field public static final MAX_TYPE_LENGTH:I = 0x20

.field public static final MESSAGE_NAMESPACE_RESERVED:Ljava/lang/String; = "__reserved_namespace"

.field public static final MESSAGE_TYPE_AUDIO_BYTES:Ljava/lang/String; = "__audio_bytes"

.field public static final MESSAGE_TYPE_EDDYSTONE_UID:Ljava/lang/String; = "__eddystone_uid"

.field public static final MESSAGE_TYPE_I_BEACON_ID:Ljava/lang/String; = "__i_beacon_id"

.field private static final zzbzy:[Lcom/google/android/gms/internal/zzayd;


# instance fields
.field private final content:[B

.field private final type:Ljava/lang/String;

.field final versionCode:I

.field private final zzaGP:Ljava/lang/String;

.field private final zzbzA:J

.field final zzbzz:[Lcom/google/android/gms/internal/zzayd;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/nearby/messages/zza;

    invoke-direct {v0}, Lcom/google/android/gms/nearby/messages/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/nearby/messages/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzayd;

    sget-object v1, Lcom/google/android/gms/internal/zzayd;->zzbAr:Lcom/google/android/gms/internal/zzayd;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/nearby/messages/Message;->zzbzy:[Lcom/google/android/gms/internal/zzayd;

    return-void
.end method

.method constructor <init>(I[BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayd;J)V
    .locals 4
    .param p2    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # [Lcom/google/android/gms/internal/zzayd;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/nearby/messages/Message;->versionCode:I

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    const-wide/16 p6, 0x0

    iput-wide p6, p0, Lcom/google/android/gms/nearby/messages/Message;->zzbzA:J

    iget-object p1, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    iget-object p3, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/google/android/gms/nearby/messages/Message;->zzaf(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 p3, 0x2

    const/4 p6, 0x0

    const/4 p7, 0x1

    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v0, "Content must be null for a device presence message."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const v0, 0x19000

    if-gt p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    const-string v1, "Content length(%d) must not exceed MAX_CONTENT_SIZE_BYTES(%d)"

    new-array v2, p3, [Ljava/lang/Object;

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p7

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iput-object p2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    if-eqz p5, :cond_4

    array-length p1, p5

    if-nez p1, :cond_5

    :cond_4
    sget-object p5, Lcom/google/android/gms/nearby/messages/Message;->zzbzy:[Lcom/google/android/gms/internal/zzayd;

    :cond_5
    iput-object p5, p0, Lcom/google/android/gms/nearby/messages/Message;->zzbzz:[Lcom/google/android/gms/internal/zzayd;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x20

    if-gt p1, p2, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    const-string p5, "Type length(%d) must not exceed MAX_TYPE_LENGTH(%d)"

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, p7

    invoke-static {p1, p5, p3}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const-string v0, ""

    const-string v1, ""

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/nearby/messages/Message;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/gms/nearby/messages/Message;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/nearby/messages/Message;->zzbzy:[Lcom/google/android/gms/internal/zzayd;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/nearby/messages/Message;-><init>([BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayd;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayd;)V
    .locals 7

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/nearby/messages/Message;-><init>([BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayd;J)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayd;J)V
    .locals 8

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/nearby/messages/Message;-><init>(I[BLjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/internal/zzayd;J)V

    return-void
.end method

.method public static zzaf(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "__reserved_namespace"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "__device_presence"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/nearby/messages/Message;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/nearby/messages/Message;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    iget-object p1, p1, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContent()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/nearby/messages/Message;->zzaGP:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/nearby/messages/Message;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/nearby/messages/Message;->content:[B

    array-length v2, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Message{namespace=\'"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', type=\'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', content=["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " bytes]}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/nearby/messages/zza;->zza(Lcom/google/android/gms/nearby/messages/Message;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzOC()Z
    .locals 2

    const-string v0, "__reserved_namespace"

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/Message;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public zzOD()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public zzgm(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/Message;->zzOC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/nearby/messages/Message;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
