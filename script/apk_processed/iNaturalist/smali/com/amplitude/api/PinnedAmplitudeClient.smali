.class public Lcom/amplitude/api/PinnedAmplitudeClient;
.super Lcom/amplitude/api/AmplitudeClient;
.source "PinnedAmplitudeClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;
    }
.end annotation


# static fields
.field protected static final SSL_CONTEXT_API_AMPLITUDE_COM:Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;

.field public static final TAG:Ljava/lang/String; = "com.amplitude.api.PinnedAmplitudeClient"

.field protected static instance:Lcom/amplitude/api/PinnedAmplitudeClient;

.field private static final logger:Lcom/amplitude/api/AmplitudeLog;


# instance fields
.field protected initializedSSLSocketFactory:Z

.field protected sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/amplitude/api/AmplitudeLog;->getLogger()Lcom/amplitude/api/AmplitudeLog;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    .line 40
    new-instance v0, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;

    invoke-direct {v0}, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;-><init>()V

    const-string v1, "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"

    .line 43
    invoke-virtual {v0, v1}, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;->addCertificate(Ljava/lang/String;)Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;

    move-result-object v0

    const-string v1, "MIIFdDCCBFygAwIBAgIQJ2buVutJ846r13Ci/ITeIjANBgkqhkiG9w0BAQwFADBvMQswCQYDVQQGEwJTRTEUMBIGA1UEChMLQWRkVHJ1c3QgQUIxJjAkBgNVBAsTHUFkZFRydXN0IEV4dGVybmFsIFRUUCBOZXR3b3JrMSIwIAYDVQQDExlBZGRUcnVzdCBFeHRlcm5hbCBDQSBSb290MB4XDTAwMDUzMDEwNDgzOFoXDTIwMDUzMDEwNDgzOFowgYUxCzAJBgNVBAYTAkdCMRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoTEUNPTU9ETyBDQSBMaW1pdGVkMSswKQYDVQQDEyJDT01PRE8gUlNBIENlcnRpZmljYXRpb24gQXV0aG9yaXR5MIICIjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAkehUktIKVrGsDSTdxc9EZ3SZKzejfSNwAHG8U9/E+ioSj0t/EFa9n3Byt2F/yUsPF6c947AEYe7/EZfH9IY+Cvo+XPmT5jR62RRr55yzhaCCenavcZDX7P0N+pxs+t+wgvQUfvm+xKYvT3+Zf7X8Z0NyvQwA1onrayzT7Y+YHBSrfuXjbvzYqOSSJNpDa2K4Vf3qwbxstovzDo2a5JtsaZn4eEgwRdWt4Q08RWD8MpZRJ7xnw8outmvqRsfHIKCxH2XeSAi6pE6p8oNGN4Tr6MyBSENnTnIqm1y9TBsoilwie7SrmNnu4FGDwwlGTm0+mfqVF9p8M1dBPI1R7Qu2XK8sYxrfV8g/vOldxJuvRZnio1oktLqpVj3Pb6r/SVi+8Kj/9Lit6Tf7urj0Czr56ENCHonYhMsT8dm74YlguIwoVqwUHZwK53Hrzw7dPamWoUi9PPevtQ0iTMARgexWO/bTouJbt7IEIlKVgJNp6I5MZfGRAy1wdALqi2cVKWlSArvX31BqVUa/oKMoYX9w0MOiqiwhqkfOKJwGRXa/ghgntNWutMtQ5mv0TIZxMOmm3xaG4Nj/QN370EKIf6MzOi5cHkERgWPOGHFrK+ymircxXDpqR+DDeVnWIBqv8mqYqnK8V0rSS527EPywTEHl7R09XiidnMy/s1Hap0flhFMCAwEAAaOB9DCB8TAfBgNVHSMEGDAWgBStvZh6NLQm9/rEJlTvA73gJMtUGjAdBgNVHQ4EFgQUu69+Aj36pvE8hI6t7jiY7NkyMtQwDgYDVR0PAQH/BAQDAgGGMA8GA1UdEwEB/wQFMAMBAf8wEQYDVR0gBAowCDAGBgRVHSAAMEQGA1UdHwQ9MDswOaA3oDWGM2h0dHA6Ly9jcmwudXNlcnRydXN0LmNvbS9BZGRUcnVzdEV4dGVybmFsQ0FSb290LmNybDA1BggrBgEFBQcBAQQpMCcwJQYIKwYBBQUHMAGGGWh0dHA6Ly9vY3NwLnVzZXJ0cnVzdC5jb20wDQYJKoZIhvcNAQEMBQADggEBAGS/g/FfmoXQzbihKVcN6Fr30ek+8nYEbvFScLsePP9NDXRqzIGCJdPDoCpdTPW6i6FtxFQJdcfjJw5dhHk3QBN39bSsHNA7qxcS1u80GH4r6XnTq1dFDK8o+tDb5VCViLvfhVdpfZLYUspzgb8c8+a4bmYRBbMelC1/kZWSWfFMzqORcUx8Rww7Cxn2obFshj5cqsQugsv5B5a6SE2Q8pTIqXOi6wZ7I53eovNNVZ96YUWYGGjHXkBrI/V5eu+MtWuLt29G9HvxPUsE2JOAWVrgQSQdso8VYFhH2+9uRv0V9dlfmrPb2LjkQLPNlzmuhbsdjrzch5vRpu/xO28QOG8="

    .line 78
    invoke-virtual {v0, v1}, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;->addCertificate(Ljava/lang/String;)Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;

    move-result-object v0

    sput-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->SSL_CONTEXT_API_AMPLITUDE_COM:Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;

    .line 165
    new-instance v0, Lcom/amplitude/api/PinnedAmplitudeClient;

    invoke-direct {v0}, Lcom/amplitude/api/PinnedAmplitudeClient;-><init>()V

    sput-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->instance:Lcom/amplitude/api/PinnedAmplitudeClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/amplitude/api/AmplitudeClient;-><init>()V

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lcom/amplitude/api/PinnedAmplitudeClient;->initializedSSLSocketFactory:Z

    return-void
.end method

.method static synthetic access$000()Lcom/amplitude/api/AmplitudeLog;
    .locals 1

    .line 28
    sget-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    return-object v0
.end method

.method public static getInstance()Lcom/amplitude/api/PinnedAmplitudeClient;
    .locals 1

    .line 173
    sget-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->instance:Lcom/amplitude/api/PinnedAmplitudeClient;

    return-object v0
.end method


# virtual methods
.method protected getPinnedCertSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 220
    sget-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->SSL_CONTEXT_API_AMPLITUDE_COM:Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;

    invoke-virtual {p0, v0}, Lcom/amplitude/api/PinnedAmplitudeClient;->getPinnedCertSslSocketFactory(Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method protected getPinnedCertSslSocketFactory(Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/amplitude/api/PinnedAmplitudeClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_1

    .line 235
    :try_start_0
    invoke-virtual {p1}, Lcom/amplitude/api/PinnedAmplitudeClient$SSLContextBuilder;->build()Ljavax/net/ssl/SSLContext;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amplitude/api/PinnedAmplitudeClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 236
    sget-object p1, Lcom/amplitude/api/PinnedAmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v0, "com.amplitude.api.PinnedAmplitudeClient"

    const-string v1, "Pinning SSL session using Comodo CA Cert"

    invoke-virtual {p1, v0, v1}, Lcom/amplitude/api/AmplitudeLog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 238
    sget-object v0, Lcom/amplitude/api/PinnedAmplitudeClient;->logger:Lcom/amplitude/api/AmplitudeLog;

    const-string v1, "com.amplitude.api.PinnedAmplitudeClient"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/amplitude/api/AmplitudeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 241
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amplitude/api/PinnedAmplitudeClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object p1
.end method

.method public declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;
    .locals 0

    monitor-enter p0

    .line 195
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/amplitude/api/AmplitudeClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/api/AmplitudeClient;

    .line 197
    new-instance p1, Lcom/amplitude/api/PinnedAmplitudeClient$1;

    invoke-direct {p1, p0, p0}, Lcom/amplitude/api/PinnedAmplitudeClient$1;-><init>(Lcom/amplitude/api/PinnedAmplitudeClient;Lcom/amplitude/api/PinnedAmplitudeClient;)V

    invoke-virtual {p0, p1}, Lcom/amplitude/api/PinnedAmplitudeClient;->runOnLogThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 194
    monitor-exit p0

    throw p1
.end method
