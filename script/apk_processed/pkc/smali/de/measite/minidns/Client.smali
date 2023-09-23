.class public Lde/measite/minidns/Client;
.super Ljava/lang/Object;
.source "Client.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# instance fields
.field protected bufferSize:I

.field protected cache:Lde/measite/minidns/DNSCache;

.field protected random:Ljava/util/Random;

.field protected timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const-class v0, Lde/measite/minidns/Client;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Lde/measite/minidns/Client;-><init>(Lde/measite/minidns/DNSCache;)V

    return-void
.end method

.method public constructor <init>(Lde/measite/minidns/DNSCache;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5dc

    .line 39
    iput v0, p0, Lde/measite/minidns/Client;->bufferSize:I

    const/16 v0, 0x1388

    .line 44
    iput v0, p0, Lde/measite/minidns/Client;->timeout:I

    :try_start_0
    const-string v0, "SHA1PRNG"

    .line 57
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lde/measite/minidns/Client;->random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lde/measite/minidns/Client;->random:Ljava/util/Random;

    .line 61
    :goto_0
    iput-object p1, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    return-void
.end method


# virtual methods
.method public findDNS()[Ljava/lang/String;
    .locals 4

    .line 214
    invoke-virtual {p0}, Lde/measite/minidns/Client;->findDNSByReflection()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    sget-object v1, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got DNS servers via reflection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p0}, Lde/measite/minidns/Client;->findDNSByExec()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    sget-object v1, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got DNS servers via exec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    return-object v0

    .line 228
    :cond_1
    sget-object v0, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    const-string v1, "No DNS found? Using fallback [8.8.8.8, [2001:4860:4860::8888]]"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 230
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "8.8.8.8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "[2001:4860:4860::8888]"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected findDNSByExec()[Ljava/lang/String;
    .locals 7

    .line 239
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "getprop"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/io/LineNumberReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 244
    new-instance v0, Ljava/util/HashSet;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 245
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    const-string v3, "]: ["

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    .line 250
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v3, v3, 0x4

    .line 251
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".dns"

    .line 252
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".dns1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".dns2"

    .line 253
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".dns3"

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ".dns4"

    .line 254
    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    :cond_2
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 262
    :cond_3
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_0

    .line 265
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 267
    :cond_5
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_6
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 271
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 274
    sget-object v1, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception in findDNSByExec"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method protected findDNSByReflection()[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 286
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    .line 287
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 290
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x4

    .line 292
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "net.dns1"

    aput-object v5, v4, v6

    const-string v5, "net.dns2"

    aput-object v5, v4, v3

    const/4 v5, 0x2

    const-string v7, "net.dns3"

    aput-object v7, v4, v5

    const/4 v5, 0x3

    const-string v7, "net.dns4"

    aput-object v7, v4, v5

    array-length v5, v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_7

    aget-object v8, v4, v7

    .line 295
    new-array v9, v3, [Ljava/lang/Object;

    aput-object v8, v9, v6

    invoke-virtual {v1, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v8, :cond_0

    goto :goto_1

    .line 298
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_1

    goto :goto_1

    .line 299
    :cond_1
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    .line 301
    :cond_2
    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v8

    if-nez v8, :cond_3

    goto :goto_1

    .line 305
    :cond_3
    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    goto :goto_1

    .line 308
    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_1

    .line 309
    :cond_5
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_1

    .line 311
    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 314
    :cond_7
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 315
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    .line 319
    sget-object v2, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception in findDNSByReflection"

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-object v0
.end method

.method public query(Lde/measite/minidns/Question;)Lde/measite/minidns/DNSMessage;
    .locals 10

    .line 181
    iget-object v0, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    invoke-interface {v0, p1}, Lde/measite/minidns/DNSCache;->get(Lde/measite/minidns/Question;)Lde/measite/minidns/DNSMessage;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 186
    :cond_1
    invoke-virtual {p0}, Lde/measite/minidns/Client;->findDNS()[Ljava/lang/String;

    move-result-object v0

    .line 187
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_6

    aget-object v5, v0, v4

    .line 189
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lde/measite/minidns/Client;->query(Lde/measite/minidns/Question;Ljava/lang/String;)Lde/measite/minidns/DNSMessage;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_3

    .line 193
    :cond_2
    invoke-virtual {v5}, Lde/measite/minidns/DNSMessage;->getResponseCode()Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    move-result-object v6

    sget-object v7, Lde/measite/minidns/DNSMessage$RESPONSE_CODE;->NO_ERROR:Lde/measite/minidns/DNSMessage$RESPONSE_CODE;

    if-eq v6, v7, :cond_3

    goto :goto_3

    .line 197
    :cond_3
    invoke-virtual {v5}, Lde/measite/minidns/DNSMessage;->getAnswers()[Lde/measite/minidns/Record;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_5

    aget-object v9, v6, v8

    .line 198
    invoke-virtual {v9, p1}, Lde/measite/minidns/Record;->isAnswer(Lde/measite/minidns/Question;)Z

    move-result v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_4

    return-object v5

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :catch_0
    move-exception v5

    .line 203
    sget-object v6, Lde/measite/minidns/Client;->LOGGER:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "IOException in query"

    invoke-virtual {v6, v7, v8, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public query(Lde/measite/minidns/Question;Ljava/lang/String;)Lde/measite/minidns/DNSMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x35

    .line 126
    invoke-virtual {p0, p1, p2, v0}, Lde/measite/minidns/Client;->query(Lde/measite/minidns/Question;Ljava/lang/String;I)Lde/measite/minidns/DNSMessage;

    move-result-object p1

    return-object p1
.end method

.method public query(Lde/measite/minidns/Question;Ljava/lang/String;I)Lde/measite/minidns/DNSMessage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    invoke-interface {v0, p1}, Lde/measite/minidns/DNSCache;->get(Lde/measite/minidns/Question;)Lde/measite/minidns/DNSMessage;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 142
    :cond_1
    new-instance v0, Lde/measite/minidns/DNSMessage;

    invoke-direct {v0}, Lde/measite/minidns/DNSMessage;-><init>()V

    const/4 v2, 0x1

    .line 143
    new-array v3, v2, [Lde/measite/minidns/Question;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v3}, Lde/measite/minidns/DNSMessage;->setQuestions([Lde/measite/minidns/Question;)V

    .line 144
    invoke-virtual {v0, v2}, Lde/measite/minidns/DNSMessage;->setRecursionDesired(Z)V

    .line 145
    iget-object v2, p0, Lde/measite/minidns/Client;->random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lde/measite/minidns/DNSMessage;->setId(I)V

    .line 146
    invoke-virtual {v0}, Lde/measite/minidns/DNSMessage;->toArray()[B

    move-result-object v2

    .line 147
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V

    .line 148
    :try_start_0
    new-instance v5, Ljava/net/DatagramPacket;

    array-length v6, v2

    .line 149
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v5, v2, v6, p2, p3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 150
    iget p2, p0, Lde/measite/minidns/Client;->timeout:I

    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 151
    invoke-virtual {v3, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 152
    new-instance p2, Ljava/net/DatagramPacket;

    iget p3, p0, Lde/measite/minidns/Client;->bufferSize:I

    new-array p3, p3, [B

    iget v2, p0, Lde/measite/minidns/Client;->bufferSize:I

    invoke-direct {p2, p3, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 153
    invoke-virtual {v3, p2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 154
    invoke-virtual {p2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object p2

    invoke-static {p2}, Lde/measite/minidns/DNSMessage;->parse([B)Lde/measite/minidns/DNSMessage;

    move-result-object p2

    .line 155
    invoke-virtual {p2}, Lde/measite/minidns/DNSMessage;->getId()I

    move-result p3

    invoke-virtual {v0}, Lde/measite/minidns/DNSMessage;->getId()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p3, v0, :cond_3

    if-eqz v3, :cond_2

    .line 167
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    return-object v1

    .line 158
    :cond_3
    :try_start_1
    invoke-virtual {p2}, Lde/measite/minidns/DNSMessage;->getAnswers()[Lde/measite/minidns/Record;

    move-result-object p3

    array-length v0, p3

    :goto_1
    if-ge v4, v0, :cond_5

    aget-object v2, p3, v4

    .line 159
    invoke-virtual {v2, p1}, Lde/measite/minidns/Record;->isAnswer(Lde/measite/minidns/Question;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    iget-object p3, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    if-eqz p3, :cond_5

    .line 161
    iget-object p3, p0, Lde/measite/minidns/Client;->cache:Lde/measite/minidns/DNSCache;

    invoke-interface {p3, p1, p2}, Lde/measite/minidns/DNSCache;->put(Lde/measite/minidns/Question;Lde/measite/minidns/DNSMessage;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 167
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_6
    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 147
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    if-eqz v3, :cond_8

    if-eqz v1, :cond_7

    .line 167
    :try_start_3
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p2

    invoke-static {v1, p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_8
    :goto_4
    throw p1
.end method
