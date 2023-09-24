.class public Lcom/textuality/keybase/lib/Proof;
.super Ljava/lang/Object;
.source "Proof.java"


# instance fields
.field private final mJson:Lorg/json/JSONObject;

.field private final mNametag:Ljava/lang/String;

.field private final mProofType:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/textuality/keybase/lib/Proof;->mJson:Lorg/json/JSONObject;

    const-string p1, "nametag"

    .line 40
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/Proof;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/textuality/keybase/lib/Proof;->mNametag:Ljava/lang/String;

    const-string p1, "proof_type"

    .line 41
    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/Proof;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/textuality/keybase/lib/Proof;->findType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/textuality/keybase/lib/Proof;->mProofType:I

    return-void
.end method

.method private findType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    return v3

    :sswitch_0
    const/4 p1, 0x5

    return p1

    :sswitch_1
    const/4 p1, 0x4

    return p1

    :sswitch_2
    const/4 p1, 0x3

    return p1

    .line 117
    :sswitch_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x69

    if-eq p1, v0, :cond_0

    return v3

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x6

    return p1

    :sswitch_4
    return v2

    :sswitch_5
    return v0

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_5
        0x64 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/textuality/keybase/lib/Proof;->mJson:Lorg/json/JSONObject;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/textuality/keybase/lib/JWalk;->getString(Lorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 48
    invoke-static {p1}, Lcom/textuality/keybase/lib/KeybaseException;->keybaseScrewup(Lorg/json/JSONException;)Lcom/textuality/keybase/lib/KeybaseException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public getHandle()Ljava/lang/String;
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/textuality/keybase/lib/Proof;->mNametag:Ljava/lang/String;

    .line 58
    iget v1, p0, Lcom/textuality/keybase/lib/Proof;->mProofType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/textuality/keybase/lib/Proof;->mNametag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "github.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/textuality/keybase/lib/Proof;->mNametag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "coinbase.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/textuality/keybase/lib/Proof;->mNametag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getHumanUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "human_url"

    .line 98
    invoke-direct {p0, v0}, Lcom/textuality/keybase/lib/Proof;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNametag()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/textuality/keybase/lib/Proof;->mNametag:Ljava/lang/String;

    return-object v0
.end method

.method public getPrettyName()Ljava/lang/String;
    .locals 1

    .line 85
    iget v0, p0, Lcom/textuality/keybase/lib/Proof;->mProofType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Unknown"

    return-object v0

    :pswitch_0
    const-string v0, "Web site"

    return-object v0

    :pswitch_1
    const-string v0, "Twitter"

    return-object v0

    :pswitch_2
    const-string v0, "Reddit"

    return-object v0

    :pswitch_3
    const-string v0, "Hacker News"

    return-object v0

    :pswitch_4
    const-string v0, "GitHub"

    return-object v0

    :pswitch_5
    const-string v0, "DNS"

    return-object v0

    :pswitch_6
    const-string v0, "Coinbase"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProofUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "proof_url"

    .line 105
    invoke-direct {p0, v0}, Lcom/textuality/keybase/lib/Proof;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "service_url"

    .line 101
    invoke-direct {p0, v0}, Lcom/textuality/keybase/lib/Proof;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    const-string v0, "sig_id"

    .line 77
    invoke-direct {p0, v0}, Lcom/textuality/keybase/lib/Proof;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/textuality/keybase/lib/Proof;->mProofType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/textuality/keybase/lib/Proof;->mJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
