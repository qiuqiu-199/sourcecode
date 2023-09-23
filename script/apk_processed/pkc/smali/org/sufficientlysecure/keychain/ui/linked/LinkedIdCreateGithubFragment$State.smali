.class final enum Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;
.super Ljava/lang/Enum;
.source "LinkedIdCreateGithubFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum AUTH_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum AUTH_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum DONE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum IDLE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum LID_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum LID_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum POST_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

.field public static final enum POST_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 88
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->IDLE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "AUTH_PROCESS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "AUTH_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "POST_PROCESS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "POST_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "LID_PROCESS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "LID_ERROR"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    new-instance v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const-string v1, "DONE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->DONE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    const/16 v0, 0x8

    .line 87
    new-array v0, v0, [Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->IDLE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->AUTH_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->POST_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_PROCESS:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->LID_ERROR:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v8

    sget-object v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->DONE:Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    aput-object v1, v0, v9

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    return-void

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;---><clinit>()V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move/16 v2, p2

    .line 87
    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;---><init>(Ljava/lang/String;I)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;
    .locals 4

    move-object/16 v1, p0

    .line 87
    const-class v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    return-object v1

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;--->valueOf(Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static values()[Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;
    .locals 4

    .line 87
    sget-object v0, Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->$VALUES:[Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    invoke-virtual {v0}, [Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;

    return-object v0

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;--->values()[Lorg/sufficientlysecure/keychain/ui/linked/LinkedIdCreateGithubFragment$State;"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
