.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$MatchesPendingOpsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MatchesPendingOpsColumns"
.end annotation


# static fields
.field public static final zzbbf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "client_context_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "type"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "external_game_id"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "external_match_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "pending_participant_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "version"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "is_turn"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "results"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$MatchesPendingOpsColumns;->zzbbf:[Ljava/lang/String;

    return-void
.end method