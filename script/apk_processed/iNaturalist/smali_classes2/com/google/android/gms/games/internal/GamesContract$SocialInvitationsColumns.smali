.class public interface abstract Lcom/google/android/gms/games/internal/GamesContract$SocialInvitationsColumns;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SocialInvitationsColumns"
.end annotation


# static fields
.field public static final zzbbf:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "player_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "external_social_invite_id"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "type"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "direction"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "last_modified_timestamp"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/games/internal/GamesContract$SocialInvitationsColumns;->zzbbf:[Ljava/lang/String;

    return-void
.end method
