.class public final enum Lcom/google/android/gms/internal/zzbqy$zza;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbqy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zzbqy$zza;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum zzchT:Lcom/google/android/gms/internal/zzbqy$zza;

.field public static final enum zzchU:Lcom/google/android/gms/internal/zzbqy$zza;

.field public static final enum zzchV:Lcom/google/android/gms/internal/zzbqy$zza;

.field public static final enum zzchW:Lcom/google/android/gms/internal/zzbqy$zza;

.field public static final enum zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

.field private static final synthetic zzchY:[Lcom/google/android/gms/internal/zzbqy$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzbqy$zza;

    const-string v1, "CHILD_REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbqy$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchT:Lcom/google/android/gms/internal/zzbqy$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbqy$zza;

    const-string v1, "CHILD_ADDED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/zzbqy$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchU:Lcom/google/android/gms/internal/zzbqy$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbqy$zza;

    const-string v1, "CHILD_MOVED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/android/gms/internal/zzbqy$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchV:Lcom/google/android/gms/internal/zzbqy$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbqy$zza;

    const-string v1, "CHILD_CHANGED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/android/gms/internal/zzbqy$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchW:Lcom/google/android/gms/internal/zzbqy$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzbqy$zza;

    const-string v1, "VALUE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/android/gms/internal/zzbqy$zza;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbqy$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchT:Lcom/google/android/gms/internal/zzbqy$zza;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchU:Lcom/google/android/gms/internal/zzbqy$zza;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchV:Lcom/google/android/gms/internal/zzbqy$zza;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchW:Lcom/google/android/gms/internal/zzbqy$zza;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    aput-object v1, v0, v6

    sput-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchY:[Lcom/google/android/gms/internal/zzbqy$zza;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zzbqy$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbqy$zza;->zzchY:[Lcom/google/android/gms/internal/zzbqy$zza;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbqy$zza;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbqy$zza;

    return-object v0
.end method
