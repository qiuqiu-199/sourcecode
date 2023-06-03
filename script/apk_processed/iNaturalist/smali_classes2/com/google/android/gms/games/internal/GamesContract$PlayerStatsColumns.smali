.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayerStatsColumns"
.end annotation


# static fields
.field public static final zzbbf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ave_session_length_minutes"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "churn_probability"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "days_since_last_played"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "game_id"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "num_purchases"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "num_sessions"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "num_sessions_percentile"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "player_id"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "unknown_raw_keys"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "unknown_raw_values"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "spend_percentile"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "spend_probability"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "high_spender_probability"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "total_spend_next_28_days"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$PlayerStatsColumns;->zzbbf:[Ljava/lang/String;

    return-void
.end method
