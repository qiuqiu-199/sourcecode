.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ProfileSettingsColumns"
.end annotation


# static fields
.field public static final zzbbf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "profile_visible"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "profile_visibility_explicitly_set"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "gamer_tag"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "gamer_tag_explicitly_set"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "gamer_tag_is_default"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "stock_avatar_url"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "stock_avatar_uri"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "profile_discoverable"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "auto_sign_in"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "player_id"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$ProfileSettingsColumns;->zzbbf:[Ljava/lang/String;

    return-void
.end method
